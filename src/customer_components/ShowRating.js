import React from 'react';
import { FaStar, FaStarHalfAlt } from 'react-icons/fa';

const StarRating = ({ rating,size}) => {
  let fullStars = Math.floor(rating);
  let hasHalfStar = rating - fullStars >= 0.5;
  if (rating >= 0 && rating <=0.5) {
    fullStars = 0;
    hasHalfStar = true;
  } else if (rating >0.5 && rating <=1) {
    fullStars = 1;
    hasHalfStar =false;
  } 
  if (rating >1 && rating <=1.5) {
    fullStars =1;
    hasHalfStar = true;
  } else if (rating >1.5 && rating <=2) {
    fullStars = 2;
    hasHalfStar =false;
  } 
  if (rating >2 && rating <=2.5) {
    fullStars =2;
    hasHalfStar =true;
  } else if (rating >2.5 && rating <=3) {
    fullStars = 3;
    hasHalfStar =false;
  } 
  if (rating >3 && rating <=3.5) {
    fullStars =3;
    hasHalfStar =true;
  } else if (rating >3.5 && rating <=4) {
    fullStars = 4;
    hasHalfStar =false;
  } 
  if (rating >4 && rating <=4.5) {
    fullStars =4;
    hasHalfStar =true;
  } else if (rating >4.5 && rating <=5) {
    fullStars = 5;
    hasHalfStar =false;
  } 
  return (
    <div className='StarRating'>
      {[...Array(5)].map((star, i) => {
        if (i < fullStars) {
          return <FaStar key={i} className="star" color="rgb(253, 131, 87)" size={size} />;
        } else if (i === fullStars && hasHalfStar) {
          return <FaStarHalfAlt key={i} className="star" color="rgb(253, 131, 87)" size={size} />;
        } else {
          return <FaStar key={i} className="star" color="#e4e5e9" size={size} />;
        }
      })}
    </div>
  );
};

export default StarRating;
