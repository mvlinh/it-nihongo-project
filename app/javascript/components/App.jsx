import React from 'react';
import '../assets/css/style.css';
// import classNames from "classnames";
// react components for routing our app without refresh
// @material-ui/core components
import Header from './Header/Header.js';
import Content from './Content/Content.js';

import { Parallax, Background } from "react-parallax";
// @material-ui/icons
// import GridContainer from "./Grid/GridContainer";
// import GridItem from "./Grid/GridItem";
// import Parallax from "./Parallax/Parallax";

const App = () => {
  return (
    <div className="App">
      <Header />
      <Content />
    </div>
  )
};

export default App;