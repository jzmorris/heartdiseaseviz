import React, { useState, useEffect, useRef } from 'react';

const { tableau } = window;

function Tableau(props) {  
	
	const [url] = useState(
		"https://public.tableau.com/views/jcrView/jcrView"
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
	  width: "1000px",
	  height: "800px",
	};
	
export default Tableau;