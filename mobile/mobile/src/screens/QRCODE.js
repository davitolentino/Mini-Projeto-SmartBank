import React, { useState, useEffect } from 'react';
import { Keyboard, StatusBar, YellowBox, Platform, KeyboardAvoidingView, TextInput, Text, View, StyleSheet, Dimensions, TouchableOpacity, SafeAreaView, Modal, DeviceEventEmitter, AsyncStorage } from 'react-native';
import { BarCodeScanner } from 'expo-barcode-scanner';
import { color } from 'react-native-reanimated';
import KeyboardListener from 'react-native-keyboard-listener';
import axios from '../services/axiosBack'
import api from '../services/axios'

console.disableYellowBox = true

YellowBox.ignoreWarnings(['componentWillMount', 'WebSocket', 'Remote debugger'])

const {height, width} = Dimensions.get('window')
var ajusteTelaPequena = {}
var ajusteModal = {}
var ajusteIphoneX = {}
var ajusteKeyboardAndroid = {}

export default function App() {
  const [hasPermission, setHasPermission] = useState(null);
  const [scanned, setScanned] = useState(false);
  const [modalTransferencia, setModalTransferencia] = useState(false);
  const [modalBoleto, setModalBoleto] = useState(false);
  const [contaDestino, setContaDestino] = useState(6)
  const [dataa, setData] = useState('')
  const [valor, setValor] = useState('0')
  const [valor1, setValor1] = useState('0')
  const [botoes, setBotoes] = useState({fontSize: 18})
  const [contaOrigem, setContaOrigem] = useState(0)
  const [nome, setNome] = useState(0)

  var date = new Date().getDate(); //Current Date
  var month = new Date().getMonth() + 1; //Current Month
  var year = new Date().getFullYear(); //Current Year
  var hours = new Date().getHours(); //Current Hours

  useEffect(()=> {
    if(month < 10 && date < 10){
        setData('0'+date+'/0'+month+'/'+year)
    }else if(month < 10 ){
      setData(date+'/0'+month+'/'+year)
    }else{
      setData(date+'/'+month+'/'+year)
    }

    AsyncStorage.getItem('nome',(e, r) => {
      setNome(r.split(' ')[0])
    })

  }, [])
  
  if(height > 800){
    ajusteModal = {
        marginTop: '20%', 
        borderRadius: 10, 
        marginLeft: '5%',
        marginRight: '5%',
        marginBottom: '20%',
        borderWidth: 1,
        borderColor: '#fff',
    }
  }else if(height > 850){
    ajusteIphoneX = {
        
    }
  }else if(height < 580) {
      ajusteTelaPequena = {marginBottom: '17%'}
  }

  AsyncStorage.getItem('numero_conta', (e, r) => {
    setContaOrigem(r)
  })
  async function handleSubmitPay(){
    var dataFormatada = dataa.split('/')[0] + dataa.split('/')[1] + dataa.split('/')[2]
    var valorAtual = valor
    console.log(valorAtual)  
    
    console.log(contaOrigem)

      var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=3&valores={"numero_conta": "${contaOrigem}", "data": "${dataFormatada}", "descricao": "", "valor": "${valorAtual}"}&id=2`, '', {
          headers: {
          ContentType: "text/plain",
          "tipo": "3",
          "valores": `{
              "numero_conta": "${contaOrigem}",
              "data": "${dataFormatada}",
              "descricao": "Pagamento de boleto, agencia: ${contaDestino}, data: ${data}, valor: ${valorAtual}",
              "valor": "${valorAtual}"
          }`,
          "id": '2'
          }      
      })
  }

  async function handleSubmit(){
    AsyncStorage.getItem('numero_conta', (e, r) => {
      setContaOrigem(r)
    })

    var tese = dataa.split('/')[0]+dataa.split('/')[1]+dataa.split('/')[2]
    var date = {
      contaOrigem: contaOrigem,
      contaDestino: contaDestino,
      dates: tese,
      valor: valor
    }
    setModalTransferencia(false)
    setScanned(false)
    console.log(contaOrigem)
    const dataa = await axios.post('/', date)
  }
  
  useEffect(() => {
    (async () => {
      const { status } = await BarCodeScanner.requestPermissionsAsync();
      setHasPermission(status === 'granted');
    })();
    
  }, []);

  const handleBarCodeScanned = ({type, data}) => {
    if(data.length <= 5){
      setContaDestino(data)
      setScanned(true);
      setModalTransferencia(true)
    }else{
      var dado = String(data)
      setScanned(true);
      setContaDestino(data)
      setModalBoleto(true)
      setData(dado.slice(6,8)+'/'+dado.slice(8,10)+'/'+dado.slice(10,14))

      if(dado.length == 17){
        setValor(dado.slice(14, 15)+','+dado.slice(15, 17))
        setValor1(dado.slice(14, 17))
      }else if(dado.length == 18){
        setValor(dado.slice(14, 16)+','+dado.slice(16, 18))
        setValor1(dado.slice(14, 18))
      }else if(dado.length == 19){
        setValor(dado.slice(14, 17)+','+dado.slice(17, 19))
        setValor1(dado.slice(14, 19))
      }

      setContaDestino(dado.slice(0, 6))
    }
  };
  if (hasPermission === null) {
    return <Text></Text>;
  }
  if (hasPermission === false) {
    return <Text></Text>;
  }

  return (
    <>
    <StatusBar barStyle='light-content' backgroundColor='#000000'/>
    <SafeAreaView
      style={{
        display: "flex",
        backgroundColor: '#16182F',
        height: '100%',
        justifyContent: 'flex-end',
        alignItems: 'center'
      }}>
      <BarCodeScanner
        style={{height: '100%',width: '100%'}}
        onBarCodeScanned={scanned ? undefined : handleBarCodeScanned}
        style={StyleSheet.absoluteFillObject}
      />
    {/* <KeyboardListener
            onWillShow={() => { setBotoes({display: 'none'}) }}
            onWillHide={() => { setBotoes({display: 'flex'}) }}
            
        /> */}
      {scanned && <TouchableOpacity style={styles.touchable} onPress={() => setScanned(false)} ><Text style={styles.text}>Ler o codigo novamente</Text></TouchableOpacity>}
      <View style={styles.view}></View>
    

      <Modal
        transparent={true}
        visible={modalTransferencia}
      >
      <KeyboardAvoidingView style={{flex: 1, backgroundColor: '#000000aa'}} behavior='padding' enabled={false}>

            <TouchableOpacity onPress={() => {Keyboard.dismiss()}} style={[styles.modal, ajusteModal, ajusteIphoneX]}>
                <View style={styles.viewInfos}>
                    <TextInput placeholder='Valor:' placeholderTextColor='#aaa' value={valor} onChangeText={text => setValor(text)} style={styles.textInput} keyboardType={'numeric'}  />
                </View>

                <View style={[styles.dialog, {marginBottom: '2%'}, ajusteTelaPequena]}>
                    <Text style={[{color: '#fff', fontSize: 18, textAlign: 'center'}, botoes]}>
                        Senhor(a) {nome}, você 
                        está efetuando uma transferência no dia {dataa} com o valor 
                        de <Text style={{color: '#00ff11'}}>R$ {valor}</Text> para a conta número 
                        <Text style={{color: '#1ffff0'}}> {contaDestino}</Text>
                    </Text>
                    <Text style={{color: '#fff', fontSize: 20, textAlign: 'center', marginTop: '3%'}}>
                        Deseja transferir?
                    </Text>
                </View>
                <View style={[styles.divButtons]}>
                    <TouchableOpacity onPress={()=>{setModalTransferencia(false); setScanned(false); setValor('0')}} style={styles.btCancelar}>
                        <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Cancelar</Text>
                    </TouchableOpacity>
                    <TouchableOpacity onPress={handleSubmit} style={styles.btTransferir}>
                        <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Transferir</Text>
                    </TouchableOpacity>
                </View>
            </TouchableOpacity>
        </KeyboardAvoidingView>
      </Modal>

      <Modal
        transparent={true}
        visible={modalBoleto}
      >
      <KeyboardAvoidingView style={{flex: 1, backgroundColor: '#000000aa'}} behavior='padding' enabled={false}>

            <TouchableOpacity onPress={() => {Keyboard.dismiss()}} style={[styles.modal, ajusteModal, ajusteIphoneX]}>
                <View style={styles.viewInfos}>
                    <TextInput editable={false} placeholderTextColor='#aaa' onChangeText={text => setValor(text)} style={[styles.textInput, {borderColor: '#16183f'}]} keyboardType={'numeric'}  />
                </View>

                <View style={[styles.dialog, {marginBottom: '2%'}, ajusteTelaPequena]}>
                    <Text style={[{color: '#fff', fontSize: 18, textAlign: 'center'}, botoes]}>
                        Senhor(a) {nome}, você 
                        está efetuando um pagamento de um boleto que vence no dia {dataa} com o valor 
                        de <Text style={{color: '#00ff11'}}>R$ {valor}</Text> para a agencia 
                        <Text style={{color: '#1ffff0'}}> {contaDestino}</Text>
                    </Text>
                    <Text style={{color: '#fff', fontSize: 20, textAlign: 'center', marginTop: '3%'}}>
                        Deseja pagar?
                    </Text>
                </View>
                <View style={[styles.divButtons]}>
                    <TouchableOpacity onPress={()=>{setModalBoleto(false); setScanned(false); setValor('0')}} style={styles.btCancelar}>
                        <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Cancelar</Text>
                    </TouchableOpacity>
                    <TouchableOpacity onPress={() => {handleSubmitPay(); setModalBoleto(false); setScanned(false); setValor('0'); }} style={styles.btTransferir}>
                        <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Pagar</Text>
                    </TouchableOpacity>
                </View>
            </TouchableOpacity>
        </KeyboardAvoidingView>
      </Modal>
    </SafeAreaView>
    
    </>
  );
}

const styles = StyleSheet.create({
    view: {
        display: 'flex',
        height: 40,
        width: '10%'
    },
    touchable: {
        borderColor: '#4794E0',
        borderWidth: 1,
        borderRadius: 30,
        justifyContent: 'center',
        height: '10%',
        width: '80%',

    },
    text: {
        justifyContent: 'center',
        textAlign: 'center',
        color: '#fff',
        fontSize: 20
    },
    modal: {
        backgroundColor: '#16183f', 
        marginTop: 40, 
        borderRadius: 10, 
        flex: 1,
        justifyContent: 'flex-start',
        marginLeft: 10,
        marginRight: 10,
        marginBottom: 30
    },
    buttonBack:{
        borderColor: 'blue',
        height: '8%'
    },
    divButtons: {
        height: '10%', 
        flexDirection: 'row',
        paddingLeft: '5%',
        paddingRight: '5%',
    },
    btCancelar: {
        width: '50%',
        backgroundColor: '#4794E0',
        marginRight: '1%',
        borderRadius: 30,
        justifyContent: 'center',
        alignItems: 'center'
    },
    btTransferir: {
        backgroundColor: '#4794E0',
        width: '50%',
        marginLeft: '1%',
        borderRadius: 30,
        justifyContent: 'center',
        alignItems: 'center',
    },
    dialog: {
        height: '30%', 
        paddingLeft: '6%',
        paddingRight: '6%',
        textAlign: 'center'
    },
    viewInfos: {
        width: '100%',
        justifyContent: 'center',
        alignItems: 'center'
    },
    textInput: {
        borderWidth: 1,
        width: '60%',
        height: '30%',
        textAlign: 'center',
        borderColor: '#4794E0',
        borderRadius: 30,
        color: '#fff'
    }
})
//16182F //4794E0