import React, { useRef, useState} from 'react';
import NewReview from './NewReview';
import ReviewCard from "./ReviewCard";


const ListedReviews = ({product, addReview, reviews, user, products, setReviews, editReview, onDeleteReview}) => {
    
   
    
    const [errors, setErrors] = useState([]);
    




    

    const reviewList = product?.reviews.map((review) => <ReviewCard review={review} setReviews={setReviews} editReview={editReview} onDeleteReview={onDeleteReview} />)

    return ( 
        <div>
        <NewReview product={product} addReview={addReview} user={user} reviews={reviews} setReviews={setReviews} />
        <ul>
        {reviewList} 
        </ul>
        </div>

       
     );
}
 
export default ListedReviews;

// usersReview.review_username === usersReview.user_detail.username
