import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";

import Tableau from "./Tableau";
import Home from "./Home";
import PrimarySources from "./PrimarySources";
import MortalitybyCounty from "./MortalitybyCounty";
import ResearchFunding from "./ResearchFunding";
import MortalityDemo from "./MortalityDemo";
import ImpactFactor from "./ImpactFactor";
import CountyMap from "./CountyMap";
import PredictionMap from "./PredictionMap";
import FeatureImportance from "./FeatureImportance";
import Documentation from "./Documentation";

function Main() {
  return (
    <section>
    <Route path="/researchoutput/" component={Tableau} />
	  <Route path="/" exact component={Home} />
    <Route path="/sources/" exact component={PrimarySources} />
    <Route path="/mortalitycounty/" exact component={MortalitybyCounty} />
    <Route path="/mortalitydemo/" exact component={MortalityDemo} />
    <Route path="/researchfunding/" exact component={ResearchFunding} />
    <Route path="/impactfactor/" exact component={ImpactFactor} />
    <Route path="/countymap/" exact component={CountyMap} />
    <Route path="/predictionmap/" exact component={PredictionMap} />
    <Route path="/featureimportance/" exact component={FeatureImportance} />
    <Route path="/documentation/" exact component={Documentation} />

    </section>
  );
}

export default Main;