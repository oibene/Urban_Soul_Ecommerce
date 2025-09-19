'use client'
import { useState } from "react";
import Image from "next/image";

const Carousel = ({data}) => {
    var [currentIndex, setCurrentIndex] = useState(0);

    const nextSlide = () => {
        setCurrentIndex( () =>
            currentIndex === data.length -1 ? 0: currentIndex + 1
        );
    };
    const prevSlide = () => {
        setCurrentIndex( () =>
            currentIndex === 0 ? data.length -1 : currentIndex - 1
        );
    };

    return (
        <div className="m-10">
            <div className="flex justify-center font-noto text-dark-gray mb-4">
                <p className="text-base font-bold"> MELHORES ESCOLHAS FEMININAS </p>
            </div>
            
            <div className="flex justify-center">
                <button onClick={prevSlide} className="rounded-full outline-1 w-10 h-10 text-xl font-bold cursor-pointer my-40 mx-10"> &lt; </button>

                {data.map((item, index) => (
                    <a key={index} href="#">
                        <Image src={item} alt=""></Image>
                    </a>
                ))}

                <button onClick={nextSlide} className="rounded-full outline-1 w-10 h-10 text-xl font-bold cursor-pointer my-40 mx-10"> &gt; </button>
            </div>


            <div className="flex justify-center">

                {data.map((item, index) => (
                    <button className={index === currentIndex ? "h-3 w-3 mx-1 outline rounded-full bg-dark-gray cursor-pointer" :
                                                                "h-3 w-3 mx-1 outline rounded-full cursor-pointer"}></button>
                ))}
            </div>
        </div>
    )
}

export default Carousel;