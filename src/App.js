// import logo from './logo.svg';
import './App.css';
import Header from './Components/Header';
import Experience from './Components/Experience';
import About from './Components/About';
import Connect from './Components/Connect';
import Education from './Components/Education';
import Skill from './Components/Skills';
import Project from './Components/Project';

function App() {
  return (
    <div>
      <Header/>
      <About />
      <h1>Skills</h1>
      <Skill/>
      <h1>Education</h1>
      <Education/>
      <h1>Some of my Projects</h1>
      <Project/>
      <h1>Work</h1>
      <Experience/>
      <Connect />
    </div>
  );
}

export default App;
