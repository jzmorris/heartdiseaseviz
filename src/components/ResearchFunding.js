import React, { useState, useEffect, useRef } from 'react';

const { tableau } = window;

function ResearchFunding(props) {  
	
	const [url] = useState(
		"https://public.tableau.com/views/Book1_16357553865710/FederalResearchFunding?:language=en-US&:display_count=n&:origin=viz_share_link"
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
	  height: "800px",
	};
	
export default ResearchFunding;