import React from 'react';
import ReactDOM from 'react-dom';

const ContactUs = () => {
    return (  
    <div>

    <div className="p-5">
        <div className="px-5">       
                <div className="row justify-content-center text-center">
                    <div className="">                   
                        <p className=" display-6 fw-bold mb-5 text-center">Our Contact</p>
                    </div>
                
                    <div className="col-md-6 d-none d-md-block">
                        <div className="">
                            <img style = {{height:"80vh"}} src="https://images.unsplash.com/photo-1595871151608-bc7abd1caca3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" />
                        </div>
                    </div>
                        <div className="col-md-6 text-center py-5 border border-1 bg-light"> 
                            <p className="_contactus display-3 mb-4">Connect with us</p>
                            <p className="m-0 p-0 fs-3">OUR ADDRESS</p>
                            <p className="mb-4"><i className="fa fa-map-marker-alt me-2"></i>123 Street, Manila, Philippines</p>
                            <p className="m-0 p-0 fs-3">TELEPHONE</p>
                            <p className="mb-4"><i className="fa fa-phone-alt me-2"></i>+012 345 67890</p>
                            <p className="m-0 p-0 fs-3">EMAIL</p>
                            <p className="mb-4"><i className="fa fa-envelope me-2"></i>info@haruskincare.com</p>
                            <p className="m-0 p-0 fs-3">FOLLOW US</p>
                            <a className="me-2 fs-4" href="#">
                                <i className="fab fa-facebook-f"></i>
                            </a>
                            <a className="me-2 fs-4" href="#">
                                <i className="fab fa-twitter"></i>
                            </a>
                            <a className="me-2 fs-4" href="#">
                                <i className="fab fa-linkedin-in"></i>
                            </a>
                            <a className=" me-2 fs-4" href="#">
                                <i className="fab fa-instagram"></i>
                            </a>
                            <a className=" me-2 fs-4" href="#">
                                <i className="fab fa-youtube"></i>
                            </a>               
                        </div>  
                </div> 
        </div> 
    </div>


</div>
    );
}

export default ContactUs;

if (document.getElementById('contactus')) {
    const Index = ReactDOM.createRoot(document.getElementById("contactus"));

    Index.render(
        <React.StrictMode>
            <ContactUs/>
        </React.StrictMode>
    )  
}