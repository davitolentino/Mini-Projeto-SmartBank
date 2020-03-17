import React, { useEffect } from "react";
import { View, Platform, AsyncStorage } from "react-native";
import { createAppContainer, NavigationActions } from "react-navigation";
import { createBottomTabNavigator } from "react-navigation-tabs";
import { FontAwesome5 } from "@expo/vector-icons";
import { Home, Exchange, Extract, ModeMoney, Profile, QRCODE } from "./screens";
import AddButton from "./components/AddButton";
var TabNavigator = null
console.disableYellowBox = true

if(Platform.OS == 'ios'){
    TabNavigator = createBottomTabNavigator(
        {
            Home: {
                screen: Home,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="home" size={24} color="#4794E0" />
                }
            },
            QRCODE: {
                screen: QRCODE,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="qrcode" size={24} color="#4794E0" />
                }
            },
            Add: {
                screen: () => null,
                navigationOptions: ({navigation}) => ({
                    tabBarIcon: <AddButton navigation={navigation}/>
                })
            },
            Extract: {
                screen: Extract,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="clipboard-list" size={24} color="#4794E0" />
                }
            },
            Profile: {
                screen: Profile,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="user" size={24} color="#4794E0" />
                }
            }
        },
        {
            tabBarOptions: {
                showLabel: false,
                activeBackgroundColor: '#000',
                inactiveBackgroundColor: '#16182F',
                
            },defaultNavigationOptions: ({ navigation }) => ({
                tabBarOnPress: ({ navigation, defaultHandler }) => {
                  if (
                    navigation.state.routeName == "Add"
                  ) {
                    return null;
                  }
                  defaultHandler();
                },})
        }
    );
}else{
    TabNavigator = createBottomTabNavigator(
        {
            Home: {
                screen: Home,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="home" size={24} color="#4794E0" />
                }
            },
            QRCODE: {
                screen: QRCODE,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="qrcode" size={24} color="#4794E0" />
                }
            },
            ModeMoney: {
                screen: ModeMoney,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="coins" size={24} color="#4794E0" />
                }
            },
            Exchange: {
                screen: Exchange,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="exchange-alt" size={24} color="#4794E0" />
                }
            },
            Extract: {
                screen: Extract,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="clipboard-list" size={24} color="#4794E0" />
                }
            },
            Profile: {
                screen: Profile,
                navigationOptions: {
                    tabBarIcon: () => <FontAwesome5 name="user" size={24} color="#4794E0" />
                }
            }
        },
        {
            tabBarOptions: {
                showLabel: false,
                activeBackgroundColor: '#000',
                inactiveBackgroundColor: '#16182F',
                
            },defaultNavigationOptions: ({ navigation }) => ({
                tabBarOnPress: ({ navigation, defaultHandler, }) => {                    

                  if (
                    navigation.state.routeName == "Add"
                  ) {
                    return null;
                  }
                  defaultHandler();
                }
            })
        }
    );
}

export default createAppContainer(TabNavigator)