<%-- 
    Document   : index
    Created on : 02-nov-2019, 15:47:48
    Author     : HP
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-control", "must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);

%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PTAR EL SALITRE</title><link rel="shorcut icon" href="assets/img/ICONO.ico" type="image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">
    
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style2.css">
  </head>
  <body><nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
		  <img class="logo" src="assets/img/ICONOx2.png">
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="index.jsp" class="nav-link">INICIO</a></li>
				<li class="nav-item"><a href="ptar.html" class="nav-link">EMPRESA</a></li>
	        	<li class="nav-item"><a href="gestion.html" class="nav-link">GESTION</a></li>
	        	<li class="nav-item"><a href="fase2.html" class="nav-link">PROYECTOS</a></li>
	          <li class="nav-item"><a href="contacto.html" class="nav-link">CONTACTO</a></li>
                  <li class="nav-item"><a  href="Login.jsp" class="nav-link">INICIA SESIÓN</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(assets/img/bg_1.jpg );">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate mb-md-5">
          	<span class="subheading"></span>
            <h1 class="mb-4">PLANTA DE TRATAMIENTO DE AGUAS RESIDULES EL SALITRE  FASE I</h1>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(assets/img/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
        </div>
        </div>
      </div>
    </section>
<br>
<br>
<br>
<br>
<br>
		<section class="ftco-section ftco-no-pt ftco-no-pb ftco-consult">
			<div class="container">
				<div class="row d-flex no-gutters align-items-stretch	consult-wrap">
					<div class="col-md-5 wrap-about align-items-stretch d-flex">
						<div class="ftco-animate bg-primary align-self-stretch px-4 py-5 w-100">
							<h2 class="heading-white mb-4">APARTA TU VISITA</h2>
							<form action="#" class="appointment-form ftco-animate">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Nombre Completo">
		    				</div>
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Correo Electronico">
		    				</div>
	    					<div class="form-group">
		    					<div class="form-field">
	        					<div class="select-wrap">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="" id="" class="form-control">
	                    	<option value="">Seleccione el tipo de entidad</option>
	                      <option value="">Colegio</option>
	                      <option value="">Empresa</option>
	                      <option value="">Universidad</option>
	                      <option value="">Jardin</option>
	                      <option value="">Grupo variado</option>
	                    </select>
	                  </div>
		              </div>
		    				</div>
	    					<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Celular">
		    				</div>
	    					<div class="form-group">
		              <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Asunto: Escriba departe de que empresa nos desea visitar"></textarea>
		            </div>
		            <div class="form-group">
		              <input type="submit" value="Solicitar Visita" class="btn btn-secondary py-3 px-4">
		            </div>
		    			</form>
						</div>
					</div>
					<div class="col-md-7 wrap-about ftco-animate align-items-stretch d-flex">
						<div class="bg-white p-5">
							<h2 class="mb-4">AGENDA DE EVENTOS</h2>
							<!--<div class="row">
								<div class="col-lg-6">
									<div class="services">
										<div class="icon mt-2 d-flex align-items-center"><span class="flaticon-collaboration"></span></div>
										<div class="text media-body">
											<h3>Business Solution</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-analysis"></span></div>
										<div class="text media-body">
											<h3>Financial Analysis</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-search-engine"></span></div>
										<div class="text media-body">
											<h3>Marketing Strategy</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-handshake"></span></div>
										<div class="text media-body">
											<h3>Investment Planning</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
								</div>
							</div>-->
						</div>
					</div>
				</div>
			</div>
		</section>
		<br>
		<br>
		<br>

		
		<section class="ftco-intro ftco-no-pb img" <!--style="background-image: url(assets/img/bg_3.jpg);"-->>
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-md-10 text-center heading-section heading-section-white ftco-animate">

          </div>
        </div>	
    	</div>
    </section>

    <section class="ftco-section ftco-about ftco-no-pt ftco-no-pb ftco-counter" id="section-counter">
			<div class="container consult-wrap">
				<div class="row d-flex align-items-stretch">
					<div class="col-md-6 wrap-about align-items-stretch d-flex">
						<div class="img" style="background-image: url(assets/img/about.jpg);"></div>
					</div>
					<div class="col-md-6 wrap-about ftco-animate py-md-5 pl-md-5">
						<div class="heading-section mb-4">
							<span class="subheading"></span>
							<h2>PLANTEL EMPRESARIAL DE LA PLANTA DE TRATAMIENTO</h2>
						</div>
						<div class="tabulation-2 mt-4">
							<ul class="nav nav-pills nav-fill d-md-flex d-block">
							  <li class="nav-item">
							    <a class="nav-link active py-2" data-toggle="tab" href="#mision"><span class="ion-ios-home mr-2"></span>Mision</a>
							  </li>
							  <li class="nav-item px-lg-2">
							    <a class="nav-link py-2" data-toggle="tab" href="#vision"><span class="ion-ios-person mr-2"></span>Vision</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link py-2" data-toggle="tab" href="#plan"><span class="ion-ios-mail mr-2"></span>Plan General</a>
							  </li>
							</ul>
							<div class="tab-content bg-light rounded mt-2">
							  <div class="tab-pane container p-0 active" id="mision">
							  	<p> Agua para la vida, generando bienestar para la gente.</p>
							  </div>
							  <div class="tab-pane container p-0 fade" id="vision">
							  	<p>Exelencia en la gestion empresarial del agua, compromiso y empresa para todos.</p>
							  </div>
							  <div class="tab-pane container p-0 fade" id="plan">
							  <img class="grafica" src="assets/img/plan-estrategico1.png"></img>
							  </div>
							</div>
						</div>
    				<div class="row mt-5">
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="1387">0</strong>
		                <span>Ciudadanos <br>beneficiados</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="310">0</strong>
		                <span>Actividades<br>culminadas</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="30">0</strong>
		                <span>Experiencia</span>
		              </div>
		            </div>
		          </div>
	          </div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section">
			<div class="container">
				<div class="row no-gutters justify-content-center mb-5">
          <div class="col-md-6 text-center heading-section ftco-animate">
          	<span class="subheading">Proyectos</span>
            <h2 class="mb-4"></h2>
            <p>Proyectos de los caules la parte norte de Bogota tendra el privilegio de ellos.</p>
            <p></p>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-1.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">AMPLIACION</span>
        				<h3><a href="#">FASE II</a></h3>
        				<p>La planta sera ampliada para un mmejor proceso del agua residual de la parte norte de Bogota </p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-2.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">SANEAMIENTO</span>
        				<h3><a href="#">FASE II</a></h3>
        				<p>Este proyecto traera el privilegio de tener un rio completamnete limpio.</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-3.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">GESTION</span>
        				<h3><a href="gestion.html">HABITOS SOSTENIBLES</a></h3>
        				<p>Disposicion adecuada de las basuras, uso inteligente del alcantarillado</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-4.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">GESTION</span>
        				<h3><a href="gestion.html">RECICLAJE</a></h3>
        				<p>La mejor manera de utilizacion de los residuos solidos para un mejor ambeinte dentro de la casa, la calle, el estudio u oficina.</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-5.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">EXPRESION</span>
        				<h3><a href="expresion.html">APORTES</a></h3>
        				<p>Opiniones e ideas sobre la mejor manera de utilizar el sistema de alcanttarillado, los humedales y el cuidado del medio ambiente.</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(assets/img/project-6.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">AULA</span>
        				<h3><a href="#">PEDAGOGIA</a></h3>
        				<p>Talleres de aprendizaje ambiental galeria ambiental, videos para incentivar el cuidado del agua y el medio ambiente.</p>
        			</div>
        		</div>
        	</div>
        </div>
			</div>
		</section>

    <section class="ftco-section ftco-no-pt">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading"></span>
            <h2 class="mb-4">Sistema hídrico del Distrito Capital</h2>
          </div>
        </div>
  			<div class="row tabulation mt-4 ftco-animate">
  				<div class="col-md-4">
						<ul class="nav nav-pills nav-fill d-md-flex d-block flex-column">
						  <li class="nav-item text-left">
						    <a class="nav-link active py-4" data-toggle="tab" href="#services-1"><span class="flaticon-analysis mr-2"></span>SANEAMIENTO</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-2"><span class="flaticon-business mr-2"></span>SALITRE</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-3"><span class="flaticon-insurance mr-2"></span>FUCHA</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-4"><span class="flaticon-money mr-2"></span>ITF</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-5"><span class="flaticon-rating mr-2"></span>TUNJUELO</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-6"><span class="flaticon-search-engine mr-2"></span>ITC</a>
						  </li>
						</ul>
					</div>
					<div class="col-md-8">
						<div class="tab-content">
						  <div class="tab-pane container p-0 active" id="services-1">
						  	<div class="img" style="background-image: url(assets/img/cuenca_1.jpg);"></div>
						  	<h3><a href="#">Sistema hídrico del Distrito Capital</a></h3>
						  	<p>Es la red de espacios y corredores que sostienen y conducen la biodiversidad y los procesos ecológicos esenciales a través
								del territorio, en sus diferentes formas e intensidades de ocupación, dotando al mismo de servicios ambientales para su desarrollo 
								sostenible actuando por la preservación y restauración ecológica de los elementos
								constitutivos del Sistema Hídrico, como principal conector ecológico del territorio urbano y rural.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-2">
						  	<div class="img" style="background-image: url(assets/img/cuenca_salitre.jpg);"></div>
						  	<h3><a href="#">Cuenca Salitre</a></h3>
						  	<p>La cuenca del río Salitre se encuentra ubicada en el sector centro-norte del Distrito Capital, limita por el norte con la cuenca del río Torca y el humedal La Conejera, por el occidente con el río Bogotá y el humedal Jaboque,
							  al oriente con los municipios de La Calera y Choachí, y por el sur con la cuenca del río Fucha.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-3">
						  	<div class="img" style="background-image: url(assets/img/cunca_fucha.jpg);"></div>
						  	<h3><a href="#">Cuenca Fucha</a></h3>
						  	<p>Cuenca del río Fucha, se subdivide en tres sectores, cuenca alta la cual corresponde a la parte montañosa, cuenca media que inicia a la entrada del río al perímetro urbano de la ciudad de Bogotá hasta la avenida
						    Boyacá y la cuenca baja desde la avenida Boyacá hasta su desembocadura en el Río Bogotá.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-4">
						  	<div class="img" style="background-image: url(assets/img/cuenca_fucha_tunjuelo.jpg);"></div>
						  	<h3><a href="#">Interceptor Fucha Tunjuelo</a></h3>
						  	<p>El proyecto hace parte de las megaobras del plan maestro de la EAAB para la descontaminación del río Bogotá, y tiene como fin conducir las aguas residuales de las cuencas del Fucha y del Tintal hacia el Interceptor 
								  Tunjuelo Canoas. Las aguas de la cuenca del Fucha 
								  las recibe del Interceptor Fucha y del Pondaje La Magdalena, este último diseño estructural de Consulobras</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-5">
						  	<div class="img" style="background-image: url(assets/img/cuenca_tunjuelo_2.jpg);"></div>
						  	<h3><a href="#">Cuenca Tunjuelo</a></h3>
						  	<p>La cuenca del río Tunjuelo comprende los afluentes que lo alimentan, las zonas que lo rodean, las personas, la flora, la fauna y la relación de todos estos elementos con el río. La cuenca tiene un área total
							 41.427 Ha (hectáreas), de las cuales 31.515 Ha son rurales y 7.485 Ha son urbanas y 2.427 son del Parque Nacional Natural Sumapaz</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-6">
						  	<div class="img" style="background-image: url(assets/img/cuenca_canoas_tunjuelo.jpg);"></div>
						  	<h3><a href="#">Interceptor Tunjuelo Canoas</a></h3>
						  	<p>Tratará las aguas residuales de los habitantes del sur de Bogotá y el municipio de Soacha, que nunca han tenido un saneamiento y son las grandes protagonistas
						      de la contaminación del río Bogotá. El presupuesto para su construcción ya está sobre la mesa, 4,5 billones de pesos.</p>
						  </div>
						</div>
					</div>
				</div>
		</div>
		<br>
		<br>
		<br>


    <!--<section class="ftco-section testimony-section">
      <div class="container-fluid px-md-5">
        <div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Testimonies</span>
            <h2 class="mb-4">Our Clients Says</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
          </div>
		</div>
		
        <div class="row ftco-animate justify-content-center">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(assets/img/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Racky Henderson</p>
                    <span class="position">Father</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(assets/img/person_2.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Henry Dee</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(assets/img/person_3.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Mark Huff</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(assets/img/person_4.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Rodel Golez</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(assets/img/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Ken Bosh</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	</section>



		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading"></span>
            <h2 class="mb-4">Eventos recientes</h2>
            <p>Conoce nuestra proyeccion para este año.</p>
          </div>
        </div>
				<div class="row">
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('assets/img/image_1.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">15</span>
                  <span class="mos">Mar.</span>
                  <span class="yr">2020</span>
                </div>
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Taller Educativo</a></h3>
                <p>Seccion especial para el aprendizaje para el di de l Tierra.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Leer mas<span class="ion-ios-arrow-round-forward"></span></a></p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('assets/img/image_2.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">17</span>
                  <span class="mos">Abr.</span>
                  <span class="yr">2020</span>
                </div>
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Estrategia Ambiental</a></h3>
                <p>Metodos de aprendizaje sobre el buen maneo de los residuos.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Leer mas<span class="ion-ios-arrow-round-forward"></span></a></p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('assets/img/image_3.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">20</span>
                  <span class="mos">May.</span>
                  <span class="yr">2020</span>
                </div>
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Encuesta a la comunidad</a></h3>
                <p>Planteamiento de Encuestas para analizar la poblacion y l manera de cuidar el agua.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Leer mas<span class="ion-ios-arrow-round-forward"></span></a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
			</div>
		</section>-->

		
   		
		<footer class="ftco-footer ftco-bg-dark ftco-section">
			<div class="container">
			  <div class="row mb-5">
				<div class="col-md-6 col-lg-3">
				  <div class="ftco-footer-widget mb-5">
					  <h2 class="ftco-heading-2">Desea saber mas de nosotros?</h2>
					  <div class="block-23 mb-3">
						<ul>
						  <li><span class="icon icon-map-marker"></span><span class="text">Calle 80 # 119-60 Int 2-Bogota Colombia/ Codigo PPostal 111011-Consorcio Expansion PTAR SALITRE</span></li>
						  <li><a href="#"><span class="icon icon-phone"></span><span class="text">(+57)320 964 8663</span></a></li>
						  <li><a href="#"><span class="icon icon-envelope"></span><span class="text">contactenos@ptarsalitre.com.co</span></a></li>
						</ul>
					  </div>
					  <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
					  <li class="ftco-animate"><a href="https://mobile.twitter.com/PTARElSalitre" target=black><span class="icon-twitter"></span></a></li>
					  <li class="ftco-animate"><a href="https://m.facebook.com/PTARElSalitre/" target=black><span class="icon-facebook"></span></a></li>
					</ul>
				  </div>
				</div>
				</div>
			  </div>
			</div>
		  </footer>
         <!-- <div class="col-md-6 col-lg-2">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="inicio.html"><span class="ion-ios-arrow-round-forward mr-2"></span>INICIO</a></li>
                <li><a href="ptar.html"><span class="ion-ios-arrow-round-forward mr-2"></span>EMPRESA</a></li>
                <li><a href="gestion.html"><span class="ion-ios-arrow-round-forward mr-2"></span>GESTION</a></li>
                <li><a href="expresion.html"><span class="ion-ios-arrow-round-forward mr-2"></span>COMUNIDAD</a></li>
                <li><a href="contacto.html"><span class="ion-ios-arrow-round-forward mr-2"></span>CONTACTO</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2">Recent Blog</h2>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(assets/img/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> Oct. 16, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-5 d-flex">
                <a class="blog-img mr-4" style="background-image: url(assets/img/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> Oct. 16, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Subscribe Us!</h2>
              <form action="#" class="subscribe-form">
                <div class="form-group">
                  <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="form-control submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">-->
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.easing.1.3.js"></script>
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.stellar.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
  <script src="assets/js/aos.js"></script>
  <script src="assets/js/jquery.animateNumber.min.js"></script>
  <script src="assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="assets/js/google-map.js"></script>
  <script src="assets/js/main2.js"></script>
    
  </body>
</html>
