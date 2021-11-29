import React from 'react'
import Main from './Main'
import { Link } from 'react-router-dom';

function PrimarySources() {
	return (
		<div style={{padding: '20px'}}>
		
		<br></br>

		<h1 align='left'> Data Sources:</h1>
		<ul>
			<li> Publication Data gathered from <a href="https://www.webmd.com/heart-disease/heart-disease-glossary-terms">PubMed</a>, queried Publications based on Heart Disease Related Terms</li>
			<li> Research Funding Data gathered from <a href="https://reporter.nih.gov/">NIH Reporter</a>, funding information available based on heart disease related publication / projects  </li>
			<li> Mortality Data gathered from <a href="https://wonder.cdc.gov/Deaths-by-Underlying-Cause.html">CDC Wonder</a>, for California by cause of death, county, race and age group.</li>
			<li> List of teaching hospitals (affiliations) that Publication data is associated with from <a href="https://en.wikipedia.org/wiki/Category:Teaching_hospitals_in_California">wikipedia</a></li>

		</ul>
		
		<br></br>

		<h1 >Heart Disease Related Terms:</h1>
		
		<table>
  <tr>
    <th>Term Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Angina</td>
    <td>Discomfort, pain, or pressure in the chest caused by an inadequate blood supply to the heart. Pain may also be felt in the neck, jaw, or arms.</td>
  </tr>
  <tr>
    <td>Angiogram (cardiac catheterization)</td>
    <td>A test used to diagnose heart disease. During the procedure a catheter is inserted into an artery, usually in the leg or wrist, and contrast dye is injected into the arteries and heart. X-rays of the arteries and heart are taken.</td>
  </tr>
  <tr>
    <td>Cardiac catheterization</td>
    <td>aka Angiogram</td>
  </tr>
  <tr>
    <td>Anticoagulant</td>
    <td>A medication that prevents blood from clotting; used for some people with a history of heart disease, stroke, atrial fibrillation, or blood clots.</td>
  </tr>
  <tr>
    <td>Atherosclerosis ("hardening of the arteries") </td>
    <td>The process whereby abnormal deposits of fats, cholesterol, and plaque build up, leading to coronary artery disease and other cardiovascular problems.</td>
  </tr>
  <tr>
    <td>Hardening of the arteries</td>
    <td>aka Atherosclerosis</td>
  </tr>
  <tr>
    <td>Beta-blocker</td>
    <td>A drug that slows heart rate, lowers blood pressure, controls chest pain, and helps reduce the risk of heart attack in patients with a history of heart attack.</td>
  </tr>
  <tr>
    <td>Calcium-channel blocker</td>
    <td>A drug that lowers blood pressure and may slow heart rate to control chest pain. The drug works by blocking the uptake of calcium in the cells.</td>
  </tr>
  <tr>
    <td>Catheter</td>
    <td>A slender, hollow, flexible tube.</td>
  </tr>
  <tr>
    <td>Coronary artery disease</td>
    <td>A buildup of fatty material in the wall of the coronary artery that causes narrowing of the artery.</td>
  </tr>
  <tr>
    <td>Dyspnea</td>
    <td>Shortness of breath.</td>
  </tr>
  <tr>
    <td>Electrocardiogram aka (ECG or EKG)</td>
    <td>The EKG records on graph paper the electrical activity of the heart detected through small electrode patches attached to the skin.</td>
  </tr>
  <tr>
    <td>Heart attack</td>
    <td>Permanent damage to the heart muscle caused by a lack of blood supply to the heart for an extended time period. The severity of damage varies from mild to severe.</td>
  </tr>
  <tr>
    <td>myocardial infarction</td>
    <td>aka Heart attack</td>
  </tr>
  <tr>
    <td>Heart-lung bypass machine</td>
    <td>A machine that oxygenates the blood and circulates it throughout the body during heart bypass surgery.</td>
  </tr>
  <tr>
    <td>cardiopulmonary</td>
    <td>relating to the heart and the lungs.</td>
  </tr>
  <tr>
    <td>Heart surgery</td>
    <td>Heart surgery is any surgery that involves the heart or heart valves.</td>
  </tr>
  <tr>
    <td>Ischemia</td>
    <td>Condition in which not enough oxygen-rich blood is supplied to the heart muscle to meet the heart's needs.</td>
  </tr>
  <tr>
    <td>Off-pump heart surgery</td>
    <td>Heart surgery done without the use of the cardiopulmonary bypass machine.</td>
  </tr>
  <tr>
    <td>Plaque</td>
    <td>Deposits of fats, inflammatory cells, proteins, and calcium along the lining of arteries, caused by atherosclerosis. The plaque builds up and narrows the artery.</td>
  </tr>

</table> 


<p>List curated from <a href="https://www.webmd.com/heart-disease/heart-disease-glossary-terms">Source</a></p> 

<br></br>
<h2 > Next we can look at our first visualization for <Link to="/mortalitydemo/">Heart Disease Mortality</Link></h2>

		</div>
	)
}

export default PrimarySources
