class CommentForm extends React.Component {

  render() {
    return(
      <div>
        <form className="comment-form">
          <textarea placeholder="your comment" rows="5" cols="30" />
          <input type="submit" value="Submit" />
        </form>
      </div>
    )
  }
}
