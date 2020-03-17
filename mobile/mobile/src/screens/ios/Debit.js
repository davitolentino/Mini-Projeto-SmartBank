import React, {useState, useEffect} from "react";
import { View, AsyncStorage, Text, StatusBar, Keyboard, StyleSheet, TextInput, Picker, TouchableOpacity, KeyboardAvoidingView } from "react-native";
import RNPickerSelect from 'react-native-picker-select';
import api from '../../services/axios'

export default Screen = ({ name, navigation }) => {
    const [dataa, setData] = useState('')
    const [descricao, setDescricao] = useState('')
    const [valor, setValor] = useState('')
    const [conta, setConta] = useState('')

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
          setConta(r)
      })
    }, [])
  
    async function handleSubmit(){
        var dataFormatada = dataa.split('/')[0] + dataa.split('/')[1] + dataa.split('/')[2]
        var valorAtual = valor
        var descricaoAtual = descricao

        var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=3&valores={"numero_conta": "${conta}", "data": "${dataFormatada}", "descricao": "${descricaoAtual}", "valor": "${valorAtual}"}&id=2`, '', {
            headers: {
            ContentType: "text/plain",
            "tipo": "3",
            "valores": `{
                "numero_conta": "${conta}",
                "data": "${dataFormatada}",
                "descricao": "${descricaoAtual}",
                "valor": "${valorAtual}"
            }`,
            "id": '2'
            }      
        })

        Keyboard.dismiss()
        setDescricao('')
        setValor('')
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
                <Text style={styles.title}>Débito</Text>
            </View>

            <View style={styles.viewInfos}> 
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10}}>
                    
            
                    <TextInput onChangeText={text => setValor(text)} value={valor} placeholder='Valor:' placeholderTextColor='#aaa' style={[styles.textInput, {width: '100%'}]} keyboardType={'numeric'}  />
                
                </View>
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10, marginTop: '6%'}}>
                
                    <TextInput editable={false} value={dataa} placeholder='Data:' placeholderTextColor='#aaa' style={[styles.textInput, {width: '30%', marginRight: 5}]} keyboardType={'numeric'}  />
                    
                    <TextInput onChangeText={text => setDescricao(text)} value={descricao} placeholder='Descrição:' placeholderTextColor='#aaa' style={[styles.textInput]}/>
                </View>
            </View>
            
            <View style={{flexDirection: 'row', paddingLeft: 10, paddingRight: 10}}>
                <TouchableOpacity onPress={()=> {navigation.navigate('Dashboard')}} style={styles.btEnviarIOS}>
                    <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Cancelar</Text>
                </TouchableOpacity>
                <TouchableOpacity onPress={handleSubmit} style={[styles.btEnviarIOS, {marginLeft: 5}]}>
                    <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>Debitar</Text>
                </TouchableOpacity>
            </View>
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
        backgroundColor: '#4794E0',
        alignItems: 'center',
        justifyContent: 'center',

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
})