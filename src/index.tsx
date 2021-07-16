import { NativeModules } from 'react-native';

type ZoomType = {
  multiply(a: number, b: number): Promise<number>;
};
const { Zoom } = NativeModules;

export default Zoom as ZoomType;

export * from './components/RandomNumberGenerator';
