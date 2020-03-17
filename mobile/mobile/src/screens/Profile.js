import React, { useState, useEffect } from "react";
import { View, YellowBox, Dimensions, StatusBar, Text, SafeAreaView, StyleSheet, Image, TouchableOpacity, AsyncStorage, Platform} from "react-native";
import QRCode from "react-native-qrcode";
import logo from '../../assets/logo.png'
import background from '../../assets/background.png'
import { FontAwesome5, MaterialIcons } from "@expo/vector-icons";
import socketio from 'socket.io-client'
import api from '../services/axios'
import { NavigationEvents } from 'react-navigation';

const {height, width} = Dimensions.get('window')
var ajusteTela = {}
var ajusteLetra = {}
var ajusteBotao = {}
var ajusteLogo = {}

const socket = socketio('http://10.87.203.7:3333')

YellowBox.ignoreWarnings(['Unhandled promise rejection'])
console.disableYellowBox = true

export default function Screen({ name, navigation }) {
    const [nome, setNome] = useState('')
    const [nascimento, setNascimento] = useState('')
    const [telefone, setTelefone] = useState('')
    const [endereco, setEndereco] = useState('')
    const [nConta, setNConta] = useState('')
    const [valor, setValor] = useState('0')

    


    socket.on('receive', (data) => {
            consulta(nConta)
        // {
        //     "contaDestino": "9",
        //     "contaOrigem": 5,
        //     "date": "02/02/2020",
        //     "valor": "0",
        //   }
    })

    useEffect(()=> {
        
        AsyncStorage.getItem('dataNasc', (e, r) => {
            let string = r.slice(8, 10)+'/'+r.slice(5,7)+'/'+r.slice(0, 4)
            setNascimento(string)
        })
        AsyncStorage.getItem('endereco', (e, r) => {
            setEndereco(r)
        })
        AsyncStorage.getItem('nome', (e, r) => {
            setNome(r)
        })
        AsyncStorage.getItem('numero_conta', (e, r) => {
            consulta(r)
            setNConta(r)
        })

        AsyncStorage.getItem('telefone', (e, r) => {
            let string = '('+r.slice(0, 2)+') '+r.slice(2, 7)+'-'+r.slice(7, 11)
            setTelefone(string)
        })
        
    }, [])


    function handleLogout() {
        AsyncStorage.clear(() => {
            navigation.navigate('Login')
        })
    }

    if(height < 600){
        ajusteTela = {marginTop: '0%'}
    }else if(height > 800){
        ajusteLetra = {fontSize: 20}
        ajusteBotao = {height: '8%', borderRadius: '50%'}
        ajusteLogo = {width: '100%', height: 100}
    }

    async function consulta(e) {
        var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=2&valores={"numero_conta": "${e}"}&id=2`, '', {
            headers: {
              ContentType: "text/plain",
              "tipo": '2',
              "valores": `{
                  "numero_conta": "${e}"
              }`,
              "id": "2"
            }      
          })
          
        setValor(data.saldo)
    }

    return  (
    
        <SafeAreaView style={styles.container}>
            <StatusBar barStyle="light-content" />
            <View style={[styles.logoView, ajusteTela]}>
                <Image source={logo} style={[styles.logo, ajusteLogo]} resizeMode="contain"/>
            </View>
    
            <View>
                <Text style={[styles.name, ajusteLetra]}>{nome}</Text>
            </View>
    
            <View style={{marginTop: '2%'}}>
                <Text style={{fontSize: 24}}></Text>
                {//<MaterialIcons name="keyboard-arrow-down" size={24} color="#fff" />
                }
            </View>
    
            <View style={styles.QRCode}>
                <QRCode bgColor='#4794E0' value={nConta}/>
            </View>
    
            <View>
                <Text style={[styles.saldosPri, ajusteLetra]}>{nascimento}</Text>
            </View>

            <View>
                <Text style={[styles.saldos, ajusteLetra]}>{telefone}</Text>
            </View>

            <View>
                <Text style={[styles.saldos, ajusteLetra]}>{endereco}</Text>
            </View>

            <View>
                <Text style={[styles.saldos, ajusteLetra]}>Número da conta: {nConta}</Text>
            </View>

            <View>
                <Text style={[styles.saldos, ajusteLetra]}>Saldo: <Text style={[styles.saldo, ajusteLetra]}>R$ {valor}</Text></Text>
            </View>

            <TouchableOpacity onPress={() => {handleLogout()}} style={[styles.button, ajusteBotao]}>
                <Text style={[styles.TextButton, ajusteLetra]}>Deslogar</Text>
            </TouchableOpacity>
            <NavigationEvents
                onWillFocus={() => {consulta(nConta)}}
               // onDidBlur={() => socket.disconnect()}
                />
        </SafeAreaView>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#16182F',
    alignItems: 'center',
    justifyContent: 'flex-start',
  },
  QRCode: {
      backgroundColor: '#fff',
      paddingTop: 4,
      paddingLeft: 4,
      paddingRight: 4,
      paddingBottom: 4,
      marginTop: '2%'
  },
  logoView: {
    marginTop: '15%',
    width: '80%',
  },
  logo: {
    width: '100%',
  },
  name: {
    color: '#fff',
    fontWeight: 'bold',
    fontSize: 15
  },
  button: {
    marginTop: '5%',
    height: 40,
    width: '60%',
    backgroundColor: '#4794E0',
    borderRadius: 30,
    justifyContent: 'center',
  },
  TextButton: {
       color: '#fff', 
       marginTop: '3%',
       textAlign: 'center', 
    },
    saldo: {
        marginTop: '3%',
        color: '#00ff11',
        fontWeight: 'bold'
    },
    saldos: {
        marginTop: '3%',
        color: '#fff',
    },
    saldosPri: {
        marginTop: '6%',
        color: '#fff',
    }
})