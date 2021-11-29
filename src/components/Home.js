import React from 'react';
import logo from "../images/heartdiseaseHeader.webp";
import Main from './Main'
import { Link } from 'react-router-dom';

function Home() {

	return (
		<div>
			<figure>
			<img src={logo} style={logoStyle} alt="heartHeader" />
			<figcaption>Illustration by Ruth Basagoitia and Maya Chastain</figcaption>
			</figure>
			<br></br>

			<h1>Visualizing heart disease in California</h1>


			<br></br>
			<h3 align="left">Problem: </h3>
			<p> According to the <a href="https://www.cdc.gov/heartdisease/index.htm">Centers for Disease Control</a>, heart disease remains the leading cause of death in California.</p>
			<br></br>

			<h3 align="left">Goal: </h3>
			<p> This metrics and analytic platform seeks to quantify and evaluate the degree of scientific research efforts aimed at reducing the heart disease burden.</p>
			<br></br>

			<h2 > You can begin by taking a look at the <Link to="/sources">data sources</Link></h2>

			<br></br>
			
			<p>by Jarod Morris</p>
	</div>
	);
}

export default Home

const logoStyle = {
	width: "50vh",
	height: "30vh"
  };

