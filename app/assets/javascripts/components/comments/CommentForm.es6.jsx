class CommentForm extends React.Component {
  constructor() {
    super()
  }

  render() {
    return(
      <div>
        <form className="comment-form">
          <input type="text" placeholder="your comment" />
          <input type="submit" value="Submit" />
        </form>
      </div>
    )
  }
}
