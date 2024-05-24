import React from 'react';
import ReactDOM from 'react-dom';

const Header = () => {
    return (
        <div>
             <div className="sticky-top"> {/* Header Start */} 
                {/* Topbar Start */} 
                <div className="container-fluid d-none d-lg-block">
                <div className="row p-1">
                    <div className="col">
                    <div className="d-inline-flex px-4">
                        <small><i className="fa fa-phone-alt me-2"></i>+012 345 6789</small>
                        <small className="px-1 ms-2 me-2">|</small>
                        <small><i className="fa fa-envelope me-2"></i>info@haruskincare.com</small>
                        <small className="px-1 ms-2">|</small>
                        <a className="ms-2" href="#">
                            <i className="fab fa-facebook-f"></i>
                        </a>
                        <a className="ms-2" href="#">
                            <i className="fab fa-twitter"></i>
                        </a>
                        <a className="ms-2" href="#">
                            <i className="fab fa-linkedin-in"></i>
                        </a>
                        <a className=" ms-2" href="#">
                            <i className="fab fa-instagram"></i>
                        </a>
                        <a className=" ms-2" href="#">
                            <i className="fab fa-youtube"></i>
                        </a>
                        
                    </div>
                    </div>

                </div>
                </div>
               
            </div> {/* Header End */} 
        </div>
        
    );
}

export default Header;

if (document.getElementById('header')) {
    const Index = ReactDOM.createRoot(document.getElementById("header"));

    Index.render(
        <React.StrictMode>
            <Header/>
        </React.StrictMode>
    )  
}