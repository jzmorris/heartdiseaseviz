import React, { useState, useEffect, useRef } from 'react';

const { tableau } = window;

function FeatureImportance(props) {  
	
	const [url] = useState(
		"https://public.tableau.com/views/PredictionModelFeatures/PredictionModelFeatures?:language=en-US&:display_count=n&:origin=viz_share_link"
	);
	const ref = useRef(null);

	const initViz = () => {
	new tableau.Viz(ref.current, url);
	};

	useEffect(initViz, []);

	return (
	<div>
		<div style={setVizStyle} ref={ref} />

	</div>
	);
	}
	
	const setVizStyle = {
	  width: "1400px",
	  height: "800px",
	};
	
export default FeatureImportance;
