import React,{Component} from 'react';
import './App.css';
import Axios from 'axios';


export default class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      query:"",
      result:[]
    }

  }
  
  searchCollege = e => {
    this.setState({
      query:e.target.value
    });

    var keyword = {
      search: this.state.query
    };
    console.log(keyword);
    Axios.post("http://localhost:4200/search",keyword).then(res => {
        console.log(res);
        if(res.status === 200){
          this.setState({
            result:res.data
          });

          console.log(this.state.result);
          
        }
    });
}
render(){
return (
  <div className="container">
    <div className="row">

    <div className="col-md-6 offset-md-3">
      <br/>  
      <br/>  
    <div className="card">
        <div className="card-body">
          <h5 className="card-title">Search Here</h5>
          <form method="post">
          <input type="text" autocomplete="false" value={this.state.query} onChange={this.searchCollege} className="form-control form-control-lg" id="exampleFormControlInput1" placeholder="Search College Name" />
          </form>

          {this.state.result.map(function(item,index){
             return(
          <ul key={index}>

          
             <li>{item.college}</li>
              
            
              {/* <li></li> */}
          </ul>
          );

        })
      }

        </div>
</div>  
    </div>  
    </div>
  </div>
);
}
}
