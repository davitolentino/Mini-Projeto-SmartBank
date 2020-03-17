const express = require('express')
const routes = express.Router()
const api = require('./services/axios')

routes.post('/', async (req, res) => {
    console.log(req.body)
    const {data} = await api.post(`service?tipo=5&valores={"conta_origem": "${req.body.contaOrigem}", "conta_destino": "${req.body.contaDestino}", "data": "${req.body.dates}", "valor": "${req.body.valor}"}&id=2`, '', {
})
    console.log(data)
    req.io.emit('receive', req.body)

    return res.json({foi: true})
})
routes.get('/', (req, res)=> {
    return res.json(req.connectedUsers)
})

module.exports = routes 