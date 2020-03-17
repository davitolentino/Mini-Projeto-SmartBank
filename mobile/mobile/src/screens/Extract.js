import React, {useState, useEffect} from "react";
import { View, Text, StatusBar, FlatList, StyleSheet, KeyboardAvoidingView, Keyboard, SafeAreaView, TouchableOpacity, TextInput, Platform, AsyncStorage } from "react-native";
import api from '../services/axios'
import QRCode from "react-native-qrcode";

export default function Screen({ name }){
    const [dataInicial, setDataInicial] = useState('')
    const [dataFinal, setDataFinal] = useState('')
    const [conta, setConta] = useState('')
    const [infos, setInfos] = useState([])

    const daff = [{
        "data": "",
        "descricao": "Nenhum Extrato Disponivel",
        "numero_conta": "0",
        "tipo": "Indisponivel",
        "valor": "00.00",
      }]

    useEffect(() => {
        AsyncStorage.getItem('numero_conta', (e, r) => {
            setConta(r)
        })
    }, [])

    var ajusteAndroid = {}
    if(Platform.OS == 'android'){
        ajusteAndroid = {marginTop: 25}
    }

    async function handleSubmit() {
        if(dataInicial.length == 0 && dataFinal.length == 0){
            setInfos([])
        }

        if(dataInicial.length == 8  && dataFinal.length == 8) {
            
            var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=7&valores={"numero_conta": "${conta}", "inicio_periodo": "${dataInicial}", "fim_periodo": "${dataFinal}"}&id=2`, '', {
                headers: {
                ContentType: "text/plain",
                    "tipo": '7',
                    "valores": `{
                        "numero_conta": "${conta}",
                        "inicio_periodo": "${dataInicial}",
                        "fim_periodo": "${dataFinal}"
                    }`,
                    "id": "2"
                }      
            })
            if(data.cod){
                setInfos(daff)
            }else{
                setInfos(data)
                alert('Sucesso')
                Keyboard.dismiss()
            }
        }
    }
    function handleDataInicial(e){
        if(e.length <= 8){
            setDataInicial(e)
        }else{
            Keyboard.dismiss()
        }    
        if(e.length == 8){
            Keyboard.dismiss()
        }
    }
    function handleDataFinal(e){
        if(e.length <= 8){
            setDataFinal(e)
        }else{
            Keyboard.dismiss()
        }   
        if(e.length == 8){
            Keyboard.dismiss()
        } 
    }

    return (
            <KeyboardAvoidingView behavior='padding' enabled={true} style={{ flex: 1, backgroundColor: "#16182F" }}>
                <SafeAreaView style={{ flex: 1, backgroundColor: "#16182F" }}>
                    <View onPress={() => {Keyboard.dismiss()}} style={{ flex: 1, backgroundColor: "#16182F" }}>
                    
                        <StatusBar barStyle="light-content" />
                        <View style={[styles.viewPri, ajusteAndroid]}>
                            <View style={{flexDirection: 'row'}}>
                            <TextInput onChangeText={handleDataInicial}  value={dataInicial} style={[styles.TextInput]} placeholder='Data Inicial' placeholderTextColor='#bbb' keyboardType='numeric'/>
                            <TextInput onChangeText={handleDataFinal} value={dataFinal} style={[styles.TextInput]} placeholder='Data Final' placeholderTextColor='#bbb' keyboardType='numeric'/>
                            
                            </View>
                            <TouchableOpacity onPress={handleSubmit} style={styles.touchableOpacity}>
                                <Text style={styles.text}>Enviar</Text>
                            </TouchableOpacity>
                        </View>
                        <View style={styles.viewSec}>
                            <FlatList 
                                style={styles.list}
                                data={infos}
                                keyExtractor={spot => spot._id}
                                renderItem={({item}) => ( 
                                    <View key={item.data}>
                                        <View style={styles.box}>
                                            <QRCode bgColor='#4794E0' size={100} value={item.numero_conta}/>
                                            <Text style={[styles.text, {fontSize: 12, marginTop: '2%'}]}>R$ {item.valor}</Text>
                                            <Text style={[styles.text, {fontSize: 14, marginTop: '2%'}]}>{item.tipo=='DE' ? 'Débito' : 'Crédito'}</Text>
                                            <Text style={[styles.text, {fontSize: 12, marginTop: '2%'}]}>{
                                                item.data
                                            }</Text>
                                            <Text style={[styles.text, {fontSize: 14, marginTop: '2%', marginBottom: 10}]}>{item.descricao}</Text>
                                        </View>
                                    </View>           
                                )}
                            />
                        </View>
                    </View>
                </SafeAreaView>
            </KeyboardAvoidingView>
)};

const styles = StyleSheet.create({
    viewPri: {
        height: '25%',
        alignItems: 'center',
        justifyContent: 'center'
        
    },
    viewSec: {
        height: '75%',
        justifyContent: 'center',
        alignItems: 'center',
    },
    TextInput: {
        height: 50,
        width: '44%',
        borderColor: '#4794E0',
        borderWidth: 1,
        borderRadius: 30,
        marginLeft: '2%',
        marginRight: '2%',
        textAlign: 'center',
        color: '#fff'
    },
    list: {
        maxHeight: '90%',
        height: '90%',
        width: '90%',
    },
    text: {
        fontSize: 20,
        color: '#fff', 
        textAlign: 'center',
    },
    touchableOpacity: {
        marginTop: 20,
        height: 45,
        width: '44%',
        backgroundColor: '#4794E0',
        borderWidth: 1,
        borderRadius: 30,
        justifyContent: 'space-evenly'
    },
    box: {
        justifyContent: 'center', 
        alignItems: 'center', 
        marginTop: 20,
        borderWidth: 1, 
        borderColor: '#4794E0',
        borderRadius: 30,
        paddingTop: 20
    }
})