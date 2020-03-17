const express = require('express')
const cors = require('cors')
const path = require('path')
const routes = require('./src/routes')

const socketio = require('socket.io')
const http = require('http')

const app = express()
const server = http.Server(app)
const io = socketio(server)

const connectedUsers = new Array()

io.on('connection', socket => {
    connectedUsers.push(socket.id)
    console.log(socket.id)
})
io.on

app.use((req, res, next) => {
    req.io = io
    req.connectedUsers = connectedUsers
    next()
})


app.use(cors())
app.use(express.json())
app.use(routes)

server.listen(3333)