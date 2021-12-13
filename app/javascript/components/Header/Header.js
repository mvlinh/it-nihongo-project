import React from "react";
import "../../assets/css/style.css";
import styled from 'styled-components';
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import NavDropdown from "react-bootstrap/NavDropdown";

const Container = styled.div `
  height: 500px;
  background-image: url(542ac03681516bcca0dd605bedd41a2b.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center center;
  background-image: url('https://www.ohanaliving.vn/542ac03681516bcca0dd605bedd41a2b.jpg');
`;

const Wrapper = styled.div`
  padding: 20px 32px;
  display: flex;
  align-items: center;
  justify-content: space-between;
`;


const Left = styled.div`
  flex: 1;
  display: flex;
  align-items: center;
`;

const Center = styled.div`
  flex: 1;
  text-align: center;
`;

const Right = styled.div`
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: flex-end;
`;

const MenuItem = styled.div`
  font-size: 20px;
  cursor: pointer;
  color: #FFFFFF;
  margin-left: 25px;
`;

const HeaderLogo = styled.div`
  width: 167px;
  height: 47px;
  background: url('https://www.ohanaliving.vn/8541c2b17a0729942ed2a6f13b7b13e4.svg')
`;

const Header = () => {
  return (
    <Container>
      <Wrapper>
        <Left>
          <HeaderLogo />
        </Left>
        <Right>
          <MenuItem>REGISTER</MenuItem>
          <MenuItem>SIGN IN</MenuItem>
        </Right>
      </Wrapper>
    </Container>  
  );
};

export default Header;
