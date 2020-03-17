import React from "react";
import { View, StyleSheet, Text, Dimensions,TouchableHighlight, Animated, TouchableOpacity } from "react-native";
import { FontAwesome5, Feather } from "@expo/vector-icons";

export default class AddButton extends React.Component {
    mode = new Animated.Value(0);
    buttonSize = new Animated.Value(1);

    handlePress = () => {
        Animated.sequence([
            Animated.timing(this.buttonSize, {
                toValue: 0.95,
                duration: 0
            }),
            Animated.timing(this.buttonSize, {
                toValue: 1
            }),
            Animated.timing(this.mode, {
                toValue: this.mode._value === 0 ? 1 : 0
            })
        ]).start();
        
    };

    render() {
        const thermometerX = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-24, -100]
        });

        const thermometerY = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-50, -100]
        });

        const timeX = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-24, -24]
        });

        const timeY = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-50, -150]
        });

        const pulseX = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-24, 50]
        });

        const pulseY = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: [-50, -100]
        });

        const rotation = this.mode.interpolate({
            inputRange: [0, 1],
            outputRange: ["0deg", "45deg"]
        });

        const sizeStyle = {
            transform: [{ scale: this.buttonSize }]
        };

        return (
            <View style={{ position: "absolute", alignItems: "center" }}>
                <TouchableHighlight onPress={()=> {this.props.navigation.navigate('Credit')}} underlayColor="#4794E0">
                    <Animated.View style={{ position: "absolute", left: thermometerX, top: thermometerY }}>
                        <View style={styles.secondaryButton}>
                            <Text style={{color: '#fff', fontSize: 20}} >C</Text>
                        </View>
                    </Animated.View>
                </TouchableHighlight>
                <TouchableHighlight onPress={()=> {this.props.navigation.navigate('Exchange')}} underlayColor="#4794E0">
                    <Animated.View style={{ position: "absolute", left: timeX, top: timeY }}>
                        <View style={styles.secondaryButton}>
                            <FontAwesome5 name="exchange-alt" size={24} color="#FFF" />
                        </View>
                    </Animated.View>
                </TouchableHighlight>
                <TouchableHighlight onPress={()=> {this.props.navigation.navigate('Debit')}} underlayColor="#4794E0">
                    <Animated.View style={{ position: "absolute", left: pulseX, top: pulseY }}>
                        <View style={styles.secondaryButton}>
                            <Text style={{color: '#fff', fontSize: 20}} >D</Text>
                        </View>
                    </Animated.View>
                </TouchableHighlight>
                <TouchableHighlight style={styles.button} onPress={this.handlePress} underlayColor="#4794E0">
                    <Animated.View style={[sizeStyle]}>
                        <Animated.View style={{ transform: [{ rotate: rotation }] }}>
                            <FontAwesome5 name="plus" size={24} color="#FFF" />
                        </Animated.View>
                    </Animated.View>
                </TouchableHighlight>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    button: {
        alignItems: "center",
        justifyContent: "center",
        width: 62,
        height: 65,
        borderRadius: 36,
        backgroundColor: "#16182F",
        position: "absolute",
        marginTop: -50,
        shadowColor: "#4794E0",
        shadowRadius: 2,
        shadowOffset: { height: 8 },
        shadowOpacity: 0.3,
        borderWidth: 3,
        borderColor: "#FFFFFF"
    },
    secondaryButton: {
        position: "absolute",
        alignItems: "center",
        justifyContent: "center",
        width: 52,
        height: 52,
        borderRadius: 26,
        backgroundColor: "#4794E0",
        borderWidth: 2,
        borderColor: '#fff'
    }
});
