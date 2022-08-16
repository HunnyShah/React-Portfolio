import React from "react";
import axios from "axios";


class Connect extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        connects:[]
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/connects",
        method: "GET"
      }).then((res) => {
          // console.log(res.data[0].);
          
        this.setState({
          connects:res.data,
        });
      });
    }
  
    render() {
      // Assigning state
      var {connects} = this.state;
      return(
        <div id="connect">
          {connects && connects.map((connect)=>{
            return(
              <div key={connect.id} className="con_flex ">
                <a href="{connect.link}"><img src={"http://127.0.0.1:8000/storage/"+connect.image }className="con_img" /></a>
              </div>
            ) 
          })}
        </div>
      )
    }
  }
  export default Connect;