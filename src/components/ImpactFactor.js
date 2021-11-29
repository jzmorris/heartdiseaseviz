import React, { useState, useEffect, useRef } from 'react';

const { tableau } = window;

function ImpactFactor(props) {  
	
	const [url] = useState(
		"https://public.tableau.com/views/ResearchOutputbyImpactFactor/ResearchOutputbyImpactFactor?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link"
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
	
export default ImpactFactor;