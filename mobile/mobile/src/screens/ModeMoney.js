import React, {useState, useEffect} from "react";
import { View, Text, StatusBar, Keyboard, StyleSheet, TextInput, Picker, TouchableOpacity, KeyboardAvoidingView, AsyncStorage } from "react-native";
import RNPickerSelect from 'react-native-picker-select';
import api from '../services/axios'

export default Screen = ({ name }) => {
    const [tipo, setTipo] = useState('Crédito')
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

      AsyncStorage.getItem('numero_conta', (e, r)=> {
          setConta(r)
      })
    }, [])
    
    async function handleSubmit(){
        var dataFormatada = dataa.split('/')[0] + dataa.split('/')[1] + dataa.split('/')[2]
        var valorAtual = valor
        var descricaoAtual = descricao
        var tipos = 3

        if(tipo == 'Crédito'){
            tipos = 4
        }else{
            tipos = 3
        }
        
        var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=${tipos}&valores={"numero_conta": "${conta}", "data": "${dataFormatada}", "descricao": "${descricaoAtual}", "valor": "${valorAtual}"}&id=2`, '', {
            headers: {
            ContentType: "text/plain",
            "tipo": tipos,
            "valores": `{
                "numero_conta": "${conta}",
                "data": "${dataFormatada}",
                "descricao": "${descricaoAtual}",
                "valor": "${valorAtual}"
            }`,
            "id": "2"
            }      
        })

        Keyboard.dismiss()
        setDescricao('')
        setValor('')
        console.log(data)        
        if(data.cod == 301){
            alert('Saldo insuficiente')
        }else{
            alert('Sucesso')
        }
    }

    return (
    <>
        <TouchableOpacity onPress={() => {Keyboard.dismiss()}}>
        <StatusBar barStyle="light-content" />
        <KeyboardAvoidingView enabled={true} behavior='padding' style={styles.container}>
            <View>
                <Text style={styles.title}>{tipo}</Text>
            </View>

            <View style={styles.viewInfos}> 
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10}}>
                    <View style={styles.picker}>
                        <RNPickerSelect
                            placeholder={{label: 'Selecione o método:'}}
                            onValueChange={(value) => {if(value) setTipo(value)}}
                            items={[
                                { label: 'Crédito', value: 'Crédito' },
                                { label: 'Débito', value: 'Débito' },
                            ]}
                        />
                    </View>
            
                    <TextInput value={valor} onChangeText={text=>setValor(text)} placeholder='Valor:' placeholderTextColor='#aaa' style={[styles.textInput]} keyboardType={'numeric'}  />
                
                </View>
                <View style={{flexDirection: 'row', marginLeft: 10, marginRight: 10, marginTop: '6%'}}>
                
                    <TextInput editable={false} value={dataa} placeholder='Data:' placeholderTextColor='#aaa' style={[styles.textInput, {width: '30%'}]} keyboardType={'numeric'}  />
                    
                    <TextInput onChangeText={text => setDescricao(text)} value={descricao} placeholder='Descrição:' placeholderTextColor='#aaa' style={[styles.textInput]}/>
                </View>
            </View>
            
            <TouchableOpacity onPress={handleSubmit} style={styles.btEnviar}>
                <Text style={{color: '#fff', fontWeight: 'bold', fontSize: 20}}>{tipo == 'Crédito' ? 'Creditar': 'Debitar'}</Text>
            </TouchableOpacity>
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
})