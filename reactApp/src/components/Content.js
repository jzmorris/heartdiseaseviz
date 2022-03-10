import React from 'react';
import { BrowserRouter as Router, Link} from "react-router-dom";
import Main from './Main'
function Content() {
	return (
		<Router>
		<div className="App">
		  <nav className="navBar">
			<ul>
			  <li>
				<Link to="/">Home</Link>
			  </li>

			  <li>
				<Link
				  to={{
					pathname: "/sources/",
					state: {
					  title: "Primary Sources"
					}
				  }}
				>
				  Data Sources
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/mortalitydemo/",
					state: {
					  title: "Mortality by Demographics"
					}
				  }}
				>
				  Mortality by Demographics
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/mortalitycounty/",
					state: {
					  title: "Mortality by County"
					}
				  }}
				>
				  Mortality by County
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/researchoutput/",
					state: {
					  title: "Research Output"
					}
				  }}
				>
				  Research Output
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/impactfactor/",
					state: {
					  title: "Impact Factor"
					}
				  }}
				>
				  Impact Factor
				</Link>
			  </li>

			  <li>
				<Link
				  to={{
					pathname: "/researchfunding/",
					state: {
					  title: "Research Funding"
					}
				  }}
				>
				  Research Funding
				</Link>
			  </li>

			  <li>
				<Link
				  to={{
					pathname: "/countymap/",
					state: {
					  title: "County Map"
					}
				  }}
				>
				  County Map
				</Link>
			  </li>

			  <li>
				<Link
				  to={{
					pathname: "/predictionmap/",
					state: {
					  title: "Prediction Map"
					}
				  }}
				>
				  Prediction Map
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/featureimportance/",
					state: {
					  title: "Feature Importance"
					}
				  }}
				>
				  Feature Importance
				</Link>
			  </li>
			  <li>
				<Link
				  to={{
					pathname: "/documentation/",
					state: {
					  title: "Documentation"
					}
				  }}
				>
				  Documentation
				</Link>
			  </li>
			</ul>
		  </nav>
		  <Main />
		</div>
	  </Router>
	)
}

export default Content

