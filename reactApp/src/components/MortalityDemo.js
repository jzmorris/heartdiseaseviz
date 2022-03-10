import React, { useState, useEffect, useRef } from 'react';

const { tableau } = window;

function MortalityDemo(props) {  
	
	const [url] = useState(
		"https://public.tableau.com/views/HeartDiseaseMortalitybyDemographics/HeartDiseaseMortalitybyDemographics?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link"
	);
	const ref = useRef(null);

	const initViz = () => {
	new tableau.Viz(ref.current, url);
	};

	useEffect(initViz, []);

	return (
	<div>
		<h1></h1>
		<div style={setVizStyle} ref={ref} />
	</div>

	);
	}
	
	const setVizStyle = {
	  width: "1400px",
	  height: "750px",
	};
	
export default MortalityDemo;