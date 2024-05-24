import React from 'react';
import ReactDOM from 'react-dom';

const LandingPage = () => {
    return (  
    <div>
    
        <div id="carouselExampleDark" class="carousel carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="10000">
                    <img src="litrato/carousel1.jpg" class="d-none d-md-block w-100 h-75" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h6 className="text-white text-uppercase fw-bold">Haru Skincare Clinic</h6>
                        <h3 className="display-3 text-capitalize text-white mb-3 fw-bold">Facial Treatment</h3>
                        <p className="text-white mx-md-5 px-5 fs-5">Combines cleansing, exfoliation, extraction and hydration that brings back the skin’s natural balance and address specific skin concerns, complete with Flawless’ signature massage technique and a skin-lightening mask that leaves the face evenly-toned, supple and fair.</p>
                        <a className="btn btn-outline-light py-3 px-4 mt-3" href="#">Make an Appointment</a>
                    </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                    <img src="litrato/carousel2.jpg" class="d-none d-md-block w-100 h-75" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h6 className="text-white text-uppercase fw-bold">Haru Skincare Clinic</h6>
                        <h3 className="display-3 text-capitalize text-white mb-3 fw-bold">Laser Treatment</h3>
                        <p className="text-white mx-md-5 px-5 fs-5">Improve the skin's appearance, complexion or treat minor facial flaws.</p>
                        <a className="btn btn-outline-light py-3 px-4 mt-3" href="#">Make an Appointment</a>
                    </div>
                    </div>
                    <div class="carousel-item">
                    <img src="litrato/carousel3.jpg" class="d-none d-md-block w-100 h-75" alt="..."/>
                    <div class="carousel-caption d-none d-md-block">
                        <h6 className="text-white text-uppercase fw-bold">Haru Skincare Clinic</h6>
                        <h3 className="display-3 text-capitalize text-white mb-3 fw-bold">Dermatologic</h3>
                        <p className="text-white mx-md-5 px-5 fs-5">Corrects wrinkles and fine lines, age, spots, acnescars, skin discoloration, small warts, syringoma, and other small skin lesions</p>
                        <a className="btn btn-outline-light py-3 px-4 mt-3" href="#">Make an Appointment</a>
                    </div>
                    </div>
                </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


        <div className="container-fluid bg-white">
        <div className="container">
            <div className="row justify-content-center text-center">
                <div className="_landingPage">                   
                    <p className="display-6 fw-bold mb-5 p-2 text-center">Our Services</p>
                </div>
            </div>
            <div className="row">
                <div className="col-lg-3 col-md-6">
                    <div className="mb-5">
                        <img className="img-fluid" style = {{height:"50vh", width:"50vh"}} src="https://plus.unsplash.com/premium_photo-1681483469620-f17615c9a2a9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt=""/>
                        <div className=" text-center">
                            <div className="text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Dermatologic Services</a></h5>
                                <p className="m-0 text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum velit at turpis congue, id gravida arcu faucibus. Vivamus ut molestie eros. In eros magna, congue id nulla a, condimentum vestibulum nisi. Nam vehicula ultricies consequat. Praesent efficitur at dolor in facilisis. In consectetur massa non enim faucibus, eget tempor sem egestas. Ut eu turpis non urna scelerisque ultrices. Morbi blandit odio vitae finibus egestas. In finibus lectus sed odio feugiat, quis cursus tellus vehicula. Vestibulum quis erat felis. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className=" mb-5">
                        <img className="img-fluid" style = {{height:"50vh", width:"50vh"}} src="./litrato/open-hour.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Facial Treatments</a></h5>
                                <p className="m-0 text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum velit at turpis congue, id gravida arcu faucibus. Vivamus ut m49olestie eros. In eros magna, congue id nulla a, condimentum vestibulum nisi. Nam vehicula ultricies consequat. Praesent efficitur at dolor in facilisis. In consectetur massa non enim faucibus, eget tempor sem egestas. Ut eu turpis non urna scelerisque ultrices. Morbi blandit odio vitae finibus egestas. In finibus lectus sed odio feugiat, quis cursus tellus vehicula. Vestibulum quis erat felis. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className=" mb-5">
                        <img className="img-fluid" style = {{height:"50vh", width:"50vh"}} src="https://plus.unsplash.com/premium_photo-1691896773489-e4c5efb1f159?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Injectables and IV Drip</a></h5>
                                <p className="m-0 text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum velit at turpis congue, id gravida arcu faucibus. Vivamus ut molestie eros. In eros magna, congue id nulla a, condimentum vestibulum nisi. Nam vehicula ultricies consequat. Praesent efficitur at dolor in facilisis. In consectetur massa non enim faucibus, eget tempor sem egestas. Ut eu turpis non urna scelerisque ultrices. Morbi blandit odio vitae finibus egestas. In finibus lectus sed odio feugiat, quis cursus tellus vehicula. Vestibulum quis erat felis. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className=" mb-5">
                        <img className="img-fluid" style = {{height:"50vh"}} src="./litrato/service-3.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Laser Treatment</a></h5>
                                <p className="m-0 text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum velit at turpis congue, id gravida arcu faucibus. Vivamus ut molestie eros. In eros magna, congue id nulla a, condimentum vestibulum nisi. Nam vehicula ultricies consequat. Praesent efficitur at dolor in facilisis. In consectetur massa non enim faucibus, eget tempor sem egestas. Ut eu turpis non urna scelerisque ultrices. Morbi blandit odio vitae finibus egestas. In finibus lectus sed odio feugiat, quis cursus tellus vehicula. Vestibulum quis erat felis. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div className="container-fluid bg-white">
        <div className="container">
            <div className="row justify-content-center text-center">
                <div className="_landingPage">                   
                    <p className="display-6 fw-bold mt-5 mb-5 p-2 text-center">Certified Aestheticians</p>
                </div>
            </div>
            <div className="row">
                <div className="col-lg-3 col-md-6">
                    <div className="team overflow-hidden mb-5">
                        <img className="img-fluid" src="./litrato/team-1.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#"> Leanne Graham</a> </h5>
                                <p className="m-0">Dermatologic Expert</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className="team overflow-hidden mb-5">
                        <img className="img-fluid" src="./litrato/team-2.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Clementine Bauch</a></h5>
                                <p className="m-0">Facial Treatment Expert</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className="team overflow-hidden mb-5">
                        <img className="img-fluid" src="./litrato/team-4.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Patricia Lebsack</a></h5>
                                <p className="m-0">Injectables and IV Drip Expert</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-lg-3 col-md-6">
                    <div className="team overflow-hidden mb-5">
                        <img className="img-fluid" src="./litrato/team-3.jpg" alt=""/>
                        <div className=" text-center">
                            <div className="team-text text-dark">
                                <h5 className="mt-4 text-dark text-uppercase"><a className="text-dark" href="#">Chelsey Dietrich</a></h5>
                                <p className="m-0">Laser Treatment Expert</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div className="p-5">
        <div className="px-5">       
                <div className="row justify-content-center text-center">
                    <div className="_landingPage">                   
                        <p className="display-6 fw-bold mb-5 p-2 text-center">Our Contact</p>
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

export default LandingPage;

if (document.getElementById('landingpage')) {
    const Index = ReactDOM.createRoot(document.getElementById("landingpage"));

    Index.render(
        <React.StrictMode>
            <LandingPage/>
        </React.StrictMode>
    )  
}