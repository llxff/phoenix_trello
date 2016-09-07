import React, { PropTypes } from 'react';
import { connect }          from 'react-redux';
import { Link }             from 'react-router';

class RegistrationsNew extends React.Component {
  render() {
    return (
      <div>
        <h1>Hello world!</h1>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({});

export default connect(mapStateToProps)(RegistrationsNew);
