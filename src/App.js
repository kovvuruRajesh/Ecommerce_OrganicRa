import logo from './logo.svg';
import './App.css';
import Login from './customer_components/Login';
import Signup from './customer_components/Signup';
import Forgot_password from './customer_components/Forgot_password.js';
import Product from './customer_components/Product.js';
import Main from './customer_components/Main.js';
import Details from './customer_components/Details.js';
import { BrowserRouter as Router,Route,Routes } from 'react-router-dom';
import Bag from './customer_components/Bag.js';
import Order from './customer_components/Order.js';
import Address from './customer_components/Address.js';
import AboutUs from './customer_components/AboutUs.js';
import PrivacyPolicy from './customer_components/PrivacyPolicy.js';
import ScrollRestoration from './customer_components/ScrollRestoration.js';
import TermsAndConditions from './customer_components/TermsCondtions.js';
import FAQ from './customer_components/FAQs.js';
import ContactUs from './customer_components/ContactUs.js';
function App() {
  return (
    <div className="App">
        <Router>
        <ScrollRestoration /> 
          <Routes>
            <Route path="/" strict element=<Main/>/>
            <Route path="/login" strict element=<Login/>/> 
            <Route path="/signup" strict element=<Signup/>/> 
            <Route path="/Forgot_password" strict element=<Forgot_password/>/> 
            <Route path="/products" strict element=<Product/>/>
            <Route path='/details' strict element=<Details/>/>
            <Route path='/bag' strict element=<Bag/>/>   
            <Route path='/orders' strict element=<Order/>/>
            <Route path='/Address' strict element=<Address/>/>
            <Route path='/AboutUs' strict element=<AboutUs/>/>
            <Route path='/privacy-policy' strict element=<PrivacyPolicy/>/>
            <Route path='/terms-conditions' strict element=<TermsAndConditions/>/>
            <Route path='/FAQ' strict element=<FAQ/>/>  
            <Route path='/contactus' strict element=<ContactUs/>/>
          </Routes>
        </Router>
    </div>
  );
}
export default App;
   