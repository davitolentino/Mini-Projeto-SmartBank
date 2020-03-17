import axios from 'axios';

const api = axios.create({
  baseURL: 'http://10.87.207.6:8080/WebService'
});

export default api;
