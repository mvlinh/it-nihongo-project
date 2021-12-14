import React from 'react'
import "../../assets/css/style.css";
import styled from 'styled-components';
import CardItems from '../CardItems/CardItems'

const Container = styled.div`
    height: 100vh;
`;

const Content = () => {
    return (
        <Container>
            <CardItems />
        </Container>
    )
}

export default Content
