import React from 'react';
import { connect }          from 'react-redux';

class BoardsShowView extends React.Component {
  render() {
    return (
      <div>
        <h1>BoardsShowView</h1>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({});

export default connect(mapStateToProps)(BoardsShowView);
