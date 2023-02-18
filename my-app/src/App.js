import './App.css';
import WeatherModel from './domain/model/weather_model';
let weather = new WeatherModel(30,'°C');
function App() {
  return (
    <div className="App">
      <p>Current temprature is {weather.temp} {weather.unit}</p>
    </div>
  );
}

export default App;
