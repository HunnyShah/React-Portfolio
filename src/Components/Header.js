import React from "react";

class Header extends React.Component {
    render() {
      return(
        <header id="header">
          {/* Site name common for all pages */}
          <h1 id="site-name"><a href="/">Portfolio</a></h1>
          {/* Basic nav displayed */}
          <div className="nav">
            <ul>
                <li><a className="link" href="#home">Home</a></li>
                <li><a className="link" href="#about">About</a></li>
                <li><a className="link" href="#skill">Skills</a></li>
                <li><a className="linl" href="#education">Education</a></li>
                <li><a className="link" href="#project">Projects</a></li>
                <li><a className="link" href="#experience">Experience</a></li>
                <li><a className="link" href="#connect">Contact</a></li>
            </ul>
        </div>
        </header>
      );
    }
  }

  export default Header;