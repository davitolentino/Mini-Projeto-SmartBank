import React from "react";

import ScreenProfile from "./Profile";
import ScreenHome from "./Home";
import ScreenExtract from "./Extract"
import ScreenModeMoney from "./ModeMoney"
import ScreenQRCODE from "./QRCODE"
import ScreenExchange from "./Exchange"

export const Home = () => <ScreenHome name="Home" />;
export const QRCODE = () => <ScreenQRCODE name="QRCODE" />;
export const ModeMoney = () => <ScreenModeMoney name="ModeMoney" />;
export const Exchange = () => <ScreenExchange name="Exchange" />;
export const Extract = () => <ScreenExtract name="Extract" />;
export const Profile = ({navigation}) => <ScreenProfile navigation={navigation}  name="Profile" />;
