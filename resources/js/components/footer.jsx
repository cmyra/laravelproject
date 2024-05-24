import React from 'react';
import ReactDOM from 'react-dom';

const Footer = () => {
    return (
        <div>
            {/* Footer Start */}   
            <div className="footer container-fluid position-relative bg-dark py-5">
                <div className="container-fluid bg-dark">
                    <div className="row">
                        <div className="col">
                            <a href="#" className="navbar-brand">
                                <h2 className="mb-3"><span className="display-5 text-white">Haru</span> SKINCARE</h2>
                            </a>
                            <p className="text-white">Haru Skincare services are beauty treatments that aim to enhance the appearance and health of the skin. We offer customized services designed to cater to your specific skin needs.</p>
                            <p className="text-white"><i className="fa fa-map-marker-alt me-2 text-white"></i>123 Street, Manila, Philippines</p>
                            <p className="text-white"><i className="fa fa-phone-alt me-2 text-white"></i>+012 345 67890</p>
                            <p className="text-white"><i className="fa fa-envelope me-2 text-white"></i>info@haruskincare.com</p>
                            <div className="">
                                <a className="btn btn-lg btn-lg-square me-2" href="#"><i className="fab fa-facebook-f"></i></a>
                                <a className="btn btn-lg btn-lg-square me-2" href="#"><i className="fab fa-twitter"></i></a>
                                <a className="btn btn-lg btn-lg-square me-2" href="#"><i className="fab fa-linkedin-in"></i></a>
                                <a className="btn btn-lg btn-lg-square me-2" href="#"><i className="fab fa-instagram"></i></a>
                                <a className="btn btn-lg btn-lg-square me-2" href="#"><i className="fab fa-youtube"></i></a>
                            </div>
                        </div>
                        <div className="col-lg-6 ps-lg-5">
                            <div className="row">
                                <div className="col-sm-6 mb-5">
                                    <h5 className="text-white text-uppercase mb-4 mt-3">Quick Links</h5>
                                    <div className="d-flex flex-column justify-content-start">
                                        <a className=" mb-2" href="/servicesreact"><i className="fa fa-angle-right me-2"></i>Services</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Aestheticians</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Contact Us</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Login</a>                            
                                    </div>
                                </div>
                                <div className="col-sm-6 mb-5">
                                    <h5 className="text-white text-uppercase mb-4 mt-3">Our Services</h5>
                                    <div className="d-flex flex-column justify-content-start">
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Dermatologic</a>
                                        <a className=" mb-2" href="/Services"><i className="fa fa-angle-right me-2"></i>Facial Treatment</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Laser Treatments</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>Injectables</a>
                                        <a className=" mb-2" href="#"><i className="fa fa-angle-right me-2"></i>IV Drip</a>
                                    </div>
                                </div>
                                <div className="col-sm-12 mb-4">
                                    <h5 className="text-white text-uppercase mb-4">Newsletter</h5>
                                    <div className="w-75">
                                        <div className="input-group">
                                            <input type="text" className="form-control" placeholder="Your Email Address"/>
                                            <div className="input-group-append">
                                                <button className="btn text-white px-4 py-3">Subscribe</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="container-fluid bg-dark text-white border-top py-4" >
                <div className="container">
                    <div className="row">
                        <div className="col text-center">
                            <p className="m-0">&copy; <a href="#">Haru Skincare</a>. All Rights Reserved 2024.</p>
                        </div>
                        
                    </div>
                </div>
            </div>
            {/* Footer End */} 
        </div>
    );
}
            
export default Footer;

if (document.getElementById('footer')) {
    const Index = ReactDOM.createRoot(document.getElementById("footer"));

    Index.render(
        <React.StrictMode>
            <Footer/>
        </React.StrictMode>
    )  
}


