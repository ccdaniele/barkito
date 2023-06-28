import Head from 'next/head';
import React from 'react'
import Link from 'next/link';
import { useEffect } from 'react';
import VendorCard from './vendorcard';
import {
  Container,
  Row,
  Col,
  Button,
  Card,
  CardText,
  CardTitle,
  CardBody,
} from 'reactstrap'


export default function List() {

  const [vendorInfo, setVendorInfo] = React.useState([]);
  const [vendor, setVendor] = React.useState([]);


  useEffect(() => {

    fetch('http://127.0.0.1:3000/api/v1/vendors')
    .then(rsp => rsp.json())
    .then(data =>{
      setVendorInfo(data)
    })
  }, [])
  // debugger

  return (
    <Container className="md-container">
      <Head>
        <title>fypasi</title>
        <link rel="icon" href="/favicon-32x32.png" />
      </Head>
      <Container>
        <h1>
          Welcome to your organized life
        </h1>
        <Container>
        <div>
          
       { vendorInfo.map((vendor)=>{ 
         return <VendorCard vendorinfo={vendor}/>
          })}
      </div>
    );
        </Container>
      </Container>

      <footer className="cntr-footer">
        <p> Powered by apedalmedia</p>
      </footer>
    </Container>
  )
}

