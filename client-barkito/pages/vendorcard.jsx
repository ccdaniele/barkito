import Head from 'next/head';
import React from 'react'
import Link from 'next/link';
import { useEffect } from 'react';
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


export default function VendorCard(props) {
    console.log(props.vendorinfo)
  return (
    <Card className="my-3">
    <CardBody>
      <CardTitle tag="h5">{props.vendorinfo.name}</CardTitle>
      <CardText>
        {props.vendorinfo.neighborhood} | {props.vendorinfo.street}
      </CardText>
      {/* <Link
        color="primary"
        href="/new">
        Create &rarr;
      </Link> */}
    </CardBody>
  </Card>

  )
}