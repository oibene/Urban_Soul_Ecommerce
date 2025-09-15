import Image from 'next/image'
import logo from '../../../public/logo.svg'

export default function Header(){
    return <div>
        <a href= "#">
            <Image src={logo} alt="Urban Soul" />
        </a>
    </div>
}