import React, { useState, useEffect } from 'react';
import {AsyncStorage, StyleSheet, Keyboard, StatusBar, Platform, KeyboardAvoidingView, TouchableOpacity, Text, View, SafeAreaView, Image, Animated, TextInput, ScrollView} from 'react-native';
import api from './services/axios'
import logo from '../assets/logo.png'
import background from '../assets/background.png'

console.disableYellowBox = true

export default function App({navigation}) {
    const [ width, setWidth ] = useState(new Animated.Value(0))
    const [ height, setHeight ] = useState(new Animated.Value(0))
    const [ widthLogin, setWidthLogin ] = useState('0%')
    const [ heightLogin, setHeightLogin ] = useState('0%')
    const [ statusBar, setStatusBar ] = useState('light-content')
    const [ display, setDisplay ] = useState('flex')
    const [ display2, setDisplay2 ] = useState('none')
    const [ display3, setDisplay3 ] = useState('none')

    const [ CPF, setCPF ] = useState('')
    const [ nome, setNome ] = useState('')
    const [ dataNasc, setDataNasc ] = useState('')
    const [ endereco, setEndereco ] = useState('')
    const [ telefone, setTelefone ] = useState('')
    const [ senhaLogin, setSenhaLogin ] = useState('')
    const [ senhaAcesso, setSenhaAcesso ] = useState('')

    const [ inputCPF, setInputCPF ] = useState('#4794E0')
    const [ inputNome, setInputNome ] = useState('#4794E0')
    const [ inputDataNasc, setInputDataNasc ] = useState('#4794E0')
    const [ inputEndereco, setInputEndereco ] = useState('#4794E0')
    const [ inputTelefone, setInputTelefone ] = useState('#4794E0')
    const [ inputSenhaLogin, setInputSenhaLogin ] = useState('#4794E0')
    const [ inputSenhaAcesso, setInputSenhaAcesso ] = useState('#4794E0')

    useEffect(() => {
      AsyncStorage.getItem('numero_conta', (error, result) => {
        if(result){
          navigation.navigate('Dashboard')
        }
      })
    }, [])

    async function logar(){
      var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=6&valores={"documento": "${CPF}", "senhaAcesso": "${senhaAcesso}"}&id=2`, '', {
        headers: {
          ContentType: "text/plain",
          "tipo": '6',
          "valores": `{
            "documento": "${CPF}",
            "senhaAcesso": "${senhaAcesso}"
          }`,
          "id": "2"
        }      
      })

      if(!data.cod){
        AsyncStorage.setItem('dataNasc', data.dataNasc)
        AsyncStorage.setItem('endereco', data.endereco)
        AsyncStorage.setItem('nome', data.nome)
        AsyncStorage.setItem('numero_conta', data.numero_conta)
        AsyncStorage.setItem('telefone', data.telefone)

        navigation.navigate('Dashboard')
      }else{
        if(!(CPF == '' && senhaAcesso == '')){
          setInputCPF('red')
          setInputSenhaAcesso('red')
        }else{
          inputsVerification(1)
        }
      }
    }

    async function cadastrar() {
      Keyboard.dismiss()
      if(inputsVerification(3)){
        return inputsVerification(1)
      }
    
      var { data } = await api.post(Platform.OS == 'android' ? 'service': `service?tipo=1&valores={"nome": "${nome}", "cpf": "${CPF}", "dataNasc": "${dataNasc}", "endereco": "${endereco}", "telefone": "${telefone}", "senhaAcesso": "${senhaAcesso}", "senhaLogin": "${senhaLogin}"}&id=2`, '', {
        headers: {
          ContentType: "text/plain",
          "tipo": '1',
          "valores": `{
            "nome": "${nome}",
            "cpf": "${CPF}",
            "dataNasc": "${dataNasc}",
            "endereco": "${endereco}",
            "telefone": "${telefone}",
            "senhaAcesso": "${senhaAcesso}",
            "senhaLogin": "${senhaLogin}"
          }`,
          "id": "2"
        }      
      })
      console.log(data)
      
      inputsVerification(1)
      
      const cod = data.cod
      if(data.numero_conta){
        backToHome()
      }else if(cod == '101'){
        inputsVerification(2, '#f5b400')
        cleanInputs()
      }else if(cod == '102'){
        setInputSenhaAcesso('red')
      }else if(cod == '103'){
        setInputCPF('red')
      }else if(cod == '104'){
        setInputDataNasc('red')
      }else if(cod == '105'){
        inputsVerification(2, 'red')
        cleanInputs()
      }else if(cod == '106'){
        setInputCPF('green')
        cleanInputs()
      }
      
    }

    function inputsVerification(type, color){
      if(type == 1) {
        setInputCPF('#4794E0')
        setInputNome('#4794E0')
        setInputDataNasc('#4794E0')
        setInputEndereco('#4794E0')
        setInputTelefone('#4794E0')
        setInputSenhaAcesso('#4794E0')
        setInputSenhaLogin('#4794E0')
      }else if(type == 2){
        setInputCPF(color)
        setInputNome(color)
        setInputDataNasc(color)
        setInputEndereco(color)
        setInputTelefone(color)
        setInputSenhaAcesso(color)
        setInputSenhaLogin(color)
      }else if(type == 3){
        if(
          CPF == '' && nome == '' && dataNasc == '' && endereco == '' && telefone == ''
          && senhaAcesso == '' && senhaLogin == ''
        ){
          return true
        }
      }
    }

    function animationLogin(){
        Animated.sequence([
            Animated.timing(
                width, {
                    toValue: 100,
                    duration: 100
                }
            ),
            Animated.timing(
                height, {
                    toValue: 100,
                    duration: 50
                }
            )
        ]).start()

        setDisplay2('flex')

        width.addListener((data) => {
            setWidthLogin(data.value+'%')
        })

        height.addListener((data) => {
            setHeightLogin(data.value+'%')
        })

        setDisplay('none')
    }

    function cleanInputs(){
      setNome('')
      setCPF('')
      setDataNasc('')
      setEndereco('')
      setTelefone('')
      setSenhaAcesso('')
      setSenhaLogin('')
    }

    function backToHome(){
      inputsVerification(1)
      Keyboard.dismiss()
      cleanInputs()

      setDisplay('flex')
      setDisplay2('none')
      setDisplay3('none')
      
      Animated.sequence([
        Animated.timing(
            width, {
                toValue: 0,
                duration: 100
            }
        ),
        Animated.timing(
            height, {
                toValue: 0,
                duration: 100
            }
        )
      ]).start()

    }

    function animationSmart(){
      Animated.sequence([
          Animated.timing(
              width, {
                  toValue: 100,
                  duration: 300
              }
          ),
          Animated.timing(
              height, {
                  toValue: 100,
                  duration: 300
              }
          )
      ]).start()

      setDisplay3('flex')

      width.addListener((data) => {
          setWidthLogin(data.value+'%')
      })

      height.addListener((data) => {
          setHeightLogin(data.value+'%')
      })

      setDisplay('none')
  }

  return (
    <>
        <StatusBar barStyle='light-content' backgroundColor='#16182F'/>
        <TouchableOpacity onPress={() => {Keyboard.dismiss()}} style={{display: 'flex', height: '100%'}}>
        <KeyboardAvoidingView keyboardVerticalOffset={-40} style={{display: 'flex', flex: 1}} behavior='padding' enabled={true}>
        <SafeAreaView style={{
                        display: display,
                        flex: 1,
                        backgroundColor: '#16182F',
                        alignItems: 'center',
                        justifyContent: 'center',
                    }}>
            <View style={styles.logoView}>
                <Image source={logo} style={styles.logo} resizeMode="contain"/>
            </View>
            <View style={styles.backgroundView}>
                <Image source={background} style={styles.backgroundImage} resizeMode="contain"/>
            </View>

            <TouchableOpacity onPress={animationLogin} style={styles.buttons}>
                <Text style={styles.buttonText}>Login</Text>
            </TouchableOpacity>

            <TouchableOpacity onPress={animationSmart} style={styles.buttons}>
                <Text style={styles.buttonText}>Quero ser Smart</Text>
            </TouchableOpacity>

        </SafeAreaView>
        <SafeAreaView style={{
                    display: display2,
                    backgroundColor: '#16182F',
                    alignItems: 'center',
                    justifyContent: 'center',
                    height: '100%'
                }}>

            <Animated.View style={{
                    backgroundColor: '#16182F',
                    height: heightLogin,
                    width: widthLogin,
                    alignItems: 'center',
                    justifyContent: 'center',
                }}>

                <TouchableOpacity onPress={backToHome} style={styles.logoView}>
                    <Image source={logo} style={styles.logo} resizeMode="contain"/>
                </TouchableOpacity>
                <View style={styles.backgroundView}>
                    <Image source={background} style={styles.backgroundImage} resizeMode="contain"/>
                </View>
                <TextInput onChangeText={(text) => {if(text.length == 11){setCPF(text); Keyboard.dismiss()}else{setCPF(text)}}} value={CPF} style={[styles.inputLogin, {borderColor: inputCPF}]} placeholder='CPF:' placeholderTextColor='#ccc' keyboardType='numeric' />
                <TextInput onChangeText={(text) => {if(text.length == 6) {setSenhaAcesso(text); Keyboard.dismiss()}else{setSenhaAcesso(text)}}} value={senhaAcesso} style={[styles.inputLogin, {borderColor: inputSenhaAcesso}]} secureTextEntry={true} placeholder='Senha de acesso:' placeholderTextColor='#ccc' keyboardType='numeric'/>


                <TouchableOpacity onPress={logar} style={styles.buttonLogin}>
                    <Text style={styles.buttonTextLogin}>Entrar</Text>
                </TouchableOpacity>
            </Animated.View>
        </SafeAreaView>
        <SafeAreaView style={{
                    display: display3,
                    backgroundColor: '#16182F',
                    alignItems: 'center',
                    justifyContent: 'center',
                    height: '100%'
                }}>

            <Animated.View style={{
                    backgroundColor: '#16182F',
                    height: heightLogin,
                    width: widthLogin,
                    alignItems: 'center',
                    justifyContent: 'center',
                }}>

              <TouchableOpacity onPress={backToHome} style={styles.logoView}>
                  <Image source={logo} style={styles.logo} resizeMode="contain"/>
              </TouchableOpacity>

                  <TextInput onChangeText={text => setNome(text)} value={nome} style={[styles.inputCadastro, {borderColor: inputNome}]} placeholder='Nome:' placeholderTextColor='#ccc'/>
                  <TextInput onChangeText={(text) => {if(text.length >= 11){setCPF(text); Keyboard.dismiss()}else{setCPF(text)}}} value={CPF} style={[styles.inputCadastro, {borderColor: inputCPF}]} placeholder='CPF:' placeholderTextColor='#ccc' keyboardType='numeric'/>
                  <TextInput onChangeText={(text) => {if(text.length >= 8){setDataNasc(text); Keyboard.dismiss()}else{setDataNasc(text)}}} value={dataNasc} style={[styles.inputCadastro, {borderColor: inputDataNasc}]} placeholder='Data de nascimento:' placeholderTextColor='#ccc'  keyboardType='numbers-and-punctuation'/>
                  <TextInput onChangeText={text => setEndereco(text)} value={endereco} style={[styles.inputCadastro, {borderColor: inputEndereco}]} placeholder='Endereço:' placeholderTextColor='#ccc' />
                  <TextInput onChangeText={(text) => {if(text.length >= 11){setTelefone(text); Keyboard.dismiss()}else{setTelefone(text)}}} value={telefone} style={[styles.inputCadastro, {borderColor: inputTelefone}]} placeholder='Telefone:' placeholderTextColor='#ccc'  keyboardType='numbers-and-punctuation'/>
                  <TextInput onChangeText={(text) => {if(text.length >= 8){setSenhaLogin(text); Keyboard.dismiss()}else{setSenhaLogin(text)}}} value={senhaLogin} style={[styles.inputCadastro, {borderColor: inputSenhaLogin}]} secureTextEntry={true} placeholder='Senha de login:' placeholderTextColor='#ccc' blurOnSubmit={false} keyboardType='numbers-and-punctuation'/>
                  <TextInput onChangeText={(text) => {if(text.length >= 6){setSenhaAcesso(text); Keyboard.dismiss()}else{setSenhaAcesso(text)}}} value={senhaAcesso} style={[styles.inputCadastro, {borderColor: inputSenhaAcesso}]} secureTextEntry={true} placeholder='Senha de acesso:' placeholderTextColor='#ccc' blurOnSubmit={false} keyboardType='numbers-and-punctuation' />
         
              
              <TouchableOpacity onPress={cadastrar}  style={styles.buttonLogin}>
                <Text style={styles.buttonTextLogin}>Cadastrar</Text>
              </TouchableOpacity>
            </Animated.View>
        </SafeAreaView>
        </KeyboardAvoidingView>
        </TouchableOpacity>
    </>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#16182F',
    alignItems: 'center',
    justifyContent: 'center',
  },
  logoView: {
    marginTop: '5%',
    width: '80%',
  },
  logo: {
    width: '100%',
  },
  backgroundView: {
    width: '100%',
    height: '50%',
  },
  backgroundImage: {
    width: '100%',
    height: '100%'
  },
  buttons: {
    borderRadius: 30.5,
    borderWidth: 0.5,
    width: '80%',
    height: '10%',
    marginTop: '5%',
    backgroundColor: '#4794E0',
    justifyContent: 'center',
    alignItems: 'center'
  },
  buttonText: {
    marginTop: '5%',
    color: '#fff',
    fontSize: 17,
  },
  buttonLogin: {
    marginTop: '5%',
    borderRadius: 30.5,
    borderWidth: 0.5,
    borderColor: '#4794E0',
    width: '80%',
    height: '8%',
    backgroundColor: '#4794E0',
    justifyContent: 'flex-end',
    alignItems: 'center',
    marginBottom: 30
  },
  buttonTextLogin: {
    color: '#fff',
    fontSize: 22,
    alignContent: 'center',
    textAlign: 'center',
  },
  inputLogin: {
    width: '80%',
    borderRadius: 30.5,
    borderWidth: 1,
    borderColor: '#4794E0',
    textAlign: 'center',
    fontSize: 18,
    height: '8%',
    marginTop: '3%',
    color: '#fff'
  },
  scroll: {
    width:'80%',
    borderRadius: 30.5,
    borderWidth: 1,
    borderColor: '#4794E0',
    
  },
  inputCadastro: {
    width: '80%',
    borderRadius: 30.5,
    borderWidth: 1,
    borderColor: '#4794E0',
    textAlign: 'center',
    fontSize: 18,
    height: '8%',
    marginTop: '3%',
    color: '#fff'
  },
  buttonTextCadastrogin: {
    color: '#fff',
    fontSize: 22,
    alignContent: 'center',
    textAlign: 'center',
  },
  viewContainer:{
      flex: 1
  },
  
});