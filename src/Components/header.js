import React from "react";




class header extends React.Component {
    render() {
      return(
        <header id="header">
          {/* Site name common for all pages */}
          <h2 id="site-name"><a href="/">Portfolio</a></h2>
          {/* Basic nav displayed */}
        </header>
      );
    }
  }

  export default header;