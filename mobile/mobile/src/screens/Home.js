import React, {useEffect} from "react";
import { View, StatusBar, Image, Text, StyleSheet, SafeAreaView, AsyncStorage } from "react-native";
import logo from '../../assets/logo.png'
import background from '../../assets/background.png'

console.disableYellowBox = true

export default Screen = ({ name, navigation }) => {
    //AsyncStorage.setItem('nome', 'nome')

    //AsyncStorage.setItem('dataNasc', 'data.dataNasc')
    //AsyncStorage.setItem('endereco', 'data.endereco')
    //AsyncStorage.setItem('numero_conta', '121152020002652')
    //AsyncStorage.setItem('telefone', 'data.telefone')
    return  (
        <SafeAreaView style={styles.container}>
            <StatusBar barStyle="light-content" />

            <View>
                <Text style={styles.text}>Bem vindo</Text>
            </View>

            <View>
                <Text style={styles.text}>ao</Text>
            </View>

            <View style={styles.logoView}>
                <Image source={logo} style={styles.logo} resizeMode="contain"/>
            </View>

            <View style={styles.backgroundView}>
                <Image source={background} style={styles.backgroundImage} resizeMode="contain"/>
            </View>

        </SafeAreaView>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#16182F',
    alignItems: 'center',
    justifyContent: 'flex-end',
  },
  logoView: {
    width: '80%',
    marginBottom: '5%'
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
  text: {
      color: '#fff',
      fontSize: 45,
      fontWeight: 'bold',
  }
})