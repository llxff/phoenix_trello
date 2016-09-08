import React from 'react';
import { connect }          from 'react-redux';

class CardsShowView extends React.Component {
  render() {
    return (
      <div>
        <h1>CardsShowView</h1>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({});

export default connect(mapStateToProps)(CardsShowView);
