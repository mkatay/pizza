
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {Routes,Route} from 'react-router-dom'
import {MyNavbar} from './components/MyNavbar'
import {Products} from './components/Products'
import {Contact} from './components/Contact'
import {Home} from './components/Home'

function App() {
  return (
    <div className="container">
      <MyNavbar />
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path="/products" element={<Products />}/>
        <Route path="/contact" element={<Contact />}/>
      </Routes>
   
    </div>
  );
}

export default App;
