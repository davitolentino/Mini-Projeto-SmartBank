import React, {useState, useEffect} from "react";
import { View, Text, Platform, StatusBar, Keyboard, StyleSheet, TextInput, Picker, TouchableOpacity, KeyboardAvoidingView, AsyncStorage } from "react-native";
import api from '../services/axios'


export default Screen = ({ name, navigation }) => {
    const [contaDestino, setContaDestino] = useState('')
    const [dataa, setData] = useState('')
    const [valor, setValor] = useState('')
    const [contaOrigem, setContaOrigem] = useState('')
    const [dataAtual, setDataAtual] = useState('')

    var date = new Date().getDate(); //Current Date
    var month = new Date().getMonth() + 1; //Current Month
    var year = new Date().getFullYear(); //Current Year
  
    useEffect(()=> {
      if(month < 10 && date < 10){
        setData('0'+date+'/0'+month+'/'+year)
      }else if(month < 10 ){
        setData(date+'/0'+month+'/'+year)
      }else{
        setData(date+'/'+month+'/'+year)
      }

      AsyncStorage.getItem('numero_conta', (e, r) => {
          setContaOrigem(r)
      })
    }, [])

    async function handleSubmit(){
        let dataFormatada = dataa.split('/')[0] + dataa.split('/')[1] + dataa.split('/')[2]
        let contaOrigemAtual = contaOrigem
        let contaDestinoAtual = contaDestino
        let valorAtual = valor
        
        var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=5&valores={"conta_origem": "${contaOrigemAtual}", "conta_destino": "${contaDestinoAtual}", "data": "${dataFormatada}", "valor": "${valorAtual}"}&id=2`, '', {
            headers: {
                ContentType: "text/plain",
                "tipo": '5',
                "valores": `{
                    "conta_origem": "${contaOrigemAtual}",
                    "conta_destino": "${contaDestinoAtual}",
                    "data": "${dataFormatada}",
                    "valor": "${valorAtual}"
                }`,
                "id": "2"
            }      
        })
        Keyboard.dismiss()
        setValor('')
        if(data.cod == 301){
            alert('Saldo insuficiente')
        }else{
            alert('Sucesso')
        }
        setContaDestino('')   
        if(Platform.OS == 'ios'){
            navigation.navigate('Dashboard')
        }     
    }
  
    return (
    <>
        <TouchableOpacity onPress={() => {Keyboard.dismiss()}}>
        <StatusBar barStyle="light-content" />
        <KeyboardAvoidingView enabled={true} behavior='padding' style={styles.container}>
            <View>
                <Text style={styles.title}>Transferência</Text>
            </View>

            <View style={styles.viewInfos}> 
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10}}>
                    <View style={styles.picker}>
                        <TextInput editable={false} style={{color: '#fff', textAlign: 'center'}} value={contaOrigem} placeholder='Conta Origem' placeholderTextColor='#aaa' />
                    </View>

                    <TextInput editable={false} value={dataa} placeholder='Descrição:' placeholderTextColor='#aaa' style={[styles.textInput]}/>
                    
                </View>
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10, marginTop: '6%'}}>
                    <TextInput value={valor} onChangeText={text => setValor(text)} placeholder='Valor:' placeholderTextColor='#aaa' style={[styles.textInput]} keyboardType={'numeric'}  />
                
                    <TextInput value={contaDestino} onChangeText={text => setContaDestino(text)} placeholder='Conta Destino' placeholderTextColor='#aaa' style={[styles.textInput, {width: '30%', fontSize: 12}]} keyboardType={'numeric'}  />           
                </View>
            </View>
            {Platform.OS == 'ios' ? 
            <View style={{flexDirection: 'row', paddingLeft: 10, paddingRight: 10}}>
                <TouchableOpacity onPress={()=> {navigation.navigate('Dashboard')}} style={styles.btEnviarIOS}>
                    <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Cancelar</Text>
                </TouchableOpacity>
                <TouchableOpacity onPress={handleSubmit} style={[styles.btEnviarIOS, {marginLeft: 5}]}>
                    <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Transferir</Text>
                </TouchableOpacity>
            </View>
                : 
            <TouchableOpacity onPress={handleSubmit} style={styles.btEnviar}>
                <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Transferir</Text>
            </TouchableOpacity>
            }
        </KeyboardAvoidingView>
        </TouchableOpacity>
    </>
)};

const styles = StyleSheet.create({
    container: {
        backgroundColor: '#16182F',
        alignItems: 'center',
        justifyContent: 'center',
        height: '100%'
    },
    viewInfos: {
        width: '100%',
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: '25%'
    },
    textInput: {
        borderWidth: 1,
        width: '70%',
        height: 50,
        textAlign: 'center',
        borderColor: '#4794E0',
        borderRadius: 30,
        color: '#fff'
    },
    title: {
        color: '#fff',
        fontSize: 40,
        marginTop: '10%'
    },
    btEnviar: {
        backgroundColor: '#4794E0',
        width: '70%',
        height: 50,
        borderRadius: 30,
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: 20
    },
    btEnviarIOS: {
        backgroundColor: '#4794E0',
        width: '50%',
        height: 50,
        borderRadius: 30,
        justifyContent: 'center',
        alignItems: 'center',
        marginTop: 20
    },
    picker: {
        width: '70%',
        height: 50,
        borderRadius: 30,
        textAlign: 'center',
        color: '#fff'
    },
    itemStyle: {
        fontSize: 15,
        height: 75,
        color: 'black',
        textAlign: 'center',
        fontWeight: 'bold'
      },
    picker: {
        display: 'flex',
        width: '30%',
        paddingLeft: 5,
        borderWidth: 1,
        borderRadius: 30,
        borderColor: '#4794E0',
        alignItems: 'center',
        justifyContent: 'center',

    },
})