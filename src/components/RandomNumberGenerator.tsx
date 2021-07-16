import React, { FC } from 'react';
import { requireNativeComponent, ViewProps } from 'react-native';

const RandomNumberGeneratorView = requireNativeComponent<{}>(
  'RandomNumberGeneratorView'
);

export type RandomNumberGeneratorProps = ViewProps;

export const RandomNumberGenerator: FC<RandomNumberGeneratorProps> = (
  props
) => {
  return <RandomNumberGeneratorView {...props} />;
};
