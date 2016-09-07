import React from 'react';
import { connect }          from 'react-redux';

class HomeIndexView extends React.Component {
  render() {
    return (
      <div>
        <h1>HomeIndexView</h1>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({});

export default connect(mapStateToProps)(HomeIndexView);
