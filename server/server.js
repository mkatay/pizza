import express from 'express'
import cors from 'cors'
import mysql from 'mysql'
import {configDb} from './configDb.js'

const db=mysql.createConnection(configDb);
const app=express();

app.use(express.json())
app.use(cors())

//1.a kinálatot megjelenítő API - get kérés

//2.a kiválasztott termék részleteit megjelenítő API - get kérés, url-ben érkezik a termék id-jje


app.listen(5000,() => console.log('server listening on port 5000...'))