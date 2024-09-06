import React, { useState } from 'react';
import { FaStar, FaStarHalfAlt } from 'react-icons/fa';
import './Rating.css';
import axios from 'axios';
import { toast } from 'react-toastify';
const StarRating = (props) => {
  const [hoveredStar, setHoveredStar] = useState(null);
  const [selectedRating, setSelectedRating] = useState();
  const [isButtonEnabled, setIsButtonEnabled] = useState(false);

  const handleStarHover = (starIndex) => {
    setHoveredStar(starIndex);
  };
  const handleStarClick = (starIndex) => {
    console.log(starIndex);
    const ratingValue = starIndex + 1;
    setSelectedRating(ratingValue);
    setIsButtonEnabled(true);
  };

  const resetHoveredStar = () => {
    setHoveredStar(null);
  };

  const handleButtonClick = () => {
    let email=localStorage.getItem('email');
    const url="http://localhost/organicra/Post_rating.php"
    const fData=new FormData();
    fData.append('email',email);
    fData.append('product_id',props.product_id);
    fData.append('rating',selectedRating);
    axios.post(url,fData).then(function (response) {
      if(response.data){
        toast.success("Your review has been recorded successfully");
      }
      else{
        toast.error("Some internal problem");
      }
    })
  };

  return (
    <div className='StarRating'>
      {[...Array(5)].map((_, index) => {
        const starValue = index + 1;
        return (
          <span
            key={index}
            onMouseEnter={() => handleStarHover(index)}
            onMouseLeave={resetHoveredStar}
            onClick={() => handleStarClick(index)}
            style={{ cursor: 'pointer' }}
          >
            {starValue <= (hoveredStar !== null ? hoveredStar + 1 : selectedRating) ? (
              <FaStar
                className="star"
                color="rgb(253, 131, 87)"
                size={props.size}
              />
            ) : starValue - 1 === hoveredStar ? (
              <FaStarHalfAlt
                className="star"
                color="rgb(253, 131, 87)"
                size={props.size}
              />
            ) : (
              <FaStar
                className="star"
                color="#e4e5e9"
                size={props.size}
              />
            )}
          </span>
        );
      })}
      {selectedRating > 0 && (
        <button
          className="submit-button"
          onClick={handleButtonClick}
          disabled={!isButtonEnabled}
        >
          Submit
        </button>
      )}
    </div>
  );
};

export default StarRating;

