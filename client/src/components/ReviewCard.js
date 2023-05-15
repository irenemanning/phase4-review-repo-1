import React, { useState, useRef } from 'react'

const ReviewCard = ({review, setReviews, editReview, onDeleteReview}) => {
    const [showForm, setShowForm] = useState(false)
    const [errors, setErrors] = useState([]);
    const [updatedReview, setUpdatedReview] = useState('')
    const [rating, setRating] = useState('')
    const [title, setTitle] = useState('')
    const numbersArray = [...Array(5).keys()]
    const ref = useRef(null);


    const handleDelete = () => {
        fetch(`/reviews/${review.id}`, {
            method: "DELETE"
        })
        .then(r => {
            console.log(r)
            if (r.ok) {
                onDeleteReview(review.id)
            }}
        )
    }


    const handleUpdate = (e) => {
        e.preventDefault()
        const addReview = {review: updatedReview, rating: rating, title: title}
        fetch(`/reviews/${review.id}`, {
            method: "PATCH",
            headers: {
                "Content-Type" : "application/json"
            },
            body: JSON.stringify(addReview)
        })
        .then(r => {
            console.log(r)
            if (r.ok){
                r.json().then(editReview)}
                
             } )
        
    }

  return (
    <ul className="listedReview" key={ review.id }>
    <h3>{review.title} - {review.rating} ⭐'s  </h3>
    <br />
    { review.review }
    <br />
    <br />
    by: {review.user_detail.username} {review.date}      
    <div className='updateForm'>
    <React.Fragment>
        <button onClick={handleDelete}>Delete</button>
        <React.Fragment>
          {showForm ?  (
            <form onSubmit={handleUpdate}>
            <div>
              <label>Title:</label>
              <input 
                type="text"
                required 
                ref={ref}
                defaultValue={review.title}
                onChange={(e) => setTitle(e.target.value)} />
            </div>
            <div>
              <label>Review:</label>
              <input 
                type="text"
                ref={ref}
                defaultValue={review.review}
                required 
                onChange={(e) => setUpdatedReview(e.target.value)} />                  
            </div>
            <div>
              <label>how many ⭐'s ?</label>
              <select 
                ref={ref}
                defaultValue={review.rating}
                onChange={(e) => setRating(e.target.value)}>
                {numbersArray.map((num) => {
                  return <option key={num} value={num +1}> {num +1}</option>
                })}
                </select>
            </div>
            <button type="submit"> save review</button>
            <button onClick={() => setShowForm(false)}>cancel</button>
            <br />
            <br />
            <div>
            {errors.map((err) => (
              <p key={err}>{err}</p>
            ))}
            </div>
            </form>
            ) : (
            <button onClick={() => setShowForm(true)}>Edit</button>
            )} 
        </React.Fragment>
        </React.Fragment> 
        </div>
        <br />
    </ul>
  )
}

export default ReviewCard