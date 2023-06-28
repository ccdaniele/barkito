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


export default function Home() {

  const [vendor, setVendor] = React.useState([]);
  const [id, setID] = React.useState(0);

    
  useEffect(() => {
    const fetchVendor = async () => {
      const randomId = Math.floor(Math.random() * (100 - 1) + 1) / 1;

      fetch(`http://localhost:3000/api/v1/vendors/${randomId}`)
      .then(resp=>resp.json())
      .then(data=>{
        setVendor(data)
      })
    }
    
    setInterval(fetchVendor, 1000);

  },[])

  return (
    <Container className="md-container">
      <Head>
        <title>fypasi</title>
        <link rel="icon" href="/favicon-32x32.png" />
      </Head>
      <Container>
        <h1>
          We pick a restaurant for you
        </h1>
        <Container>
        <Card className="my-3">
          <CardBody>
            <CardTitle tag="h5">{vendor.name}</CardTitle>
            <CardText>
              {vendor.neighborhood} | {vendor.street}
            </CardText>
            {/* <Link
              color="primary"
              href="/new">
              Create &rarr;
            </Link> */}
          </CardBody>
        </Card>
        </Container>
      </Container>

      <footer className="cntr-footer">
        <p> Powered by apedalmedia</p>
      </footer>
    </Container>
  )
}

