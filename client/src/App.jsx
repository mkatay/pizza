import './App.css';
import { Banner } from './components/Banner';
import { Products } from './components/Products';
import 'bootstrap/dist/css/bootstrap.min.css';
import { QueryClient, QueryClientProvider } from 'react-query'
const queryClient = new QueryClient()

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Banner/>
      <Products />     
    </QueryClientProvider>
  );
}

export default App;
