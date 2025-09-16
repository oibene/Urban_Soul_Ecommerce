import './global.css'

import Header from "./pages/header"
import Footer from "./pages/footer"

export default function Page() {
    return (
        <div className="bg-bglight">
            <Header></Header>
            <Footer></Footer>
        </div>
        
    )
}