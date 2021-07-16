import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { RandomNumberGenerator } from 'react-native-zoom';

export default function App() {
  return (
    <View style={styles.container}>
      <RandomNumberGenerator style={{ width: '100%', height: '100%' }} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  randomNumberGenerator: {
    flex: 1,
    width: '100%',
    height: '100%',
    backgroundColor: '#ddd',
  },
});
