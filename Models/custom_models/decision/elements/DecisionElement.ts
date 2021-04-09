import { ModelElement } from "../../../model/ModelElement";

export class CircleElement extends ModelElement {
  public constructor(currentModel:any){
      super(
          "decision.png",
          "decision",
          100,
          29,
          "shape=ellipse",
          "Decision",
          currentModel
      );
  }
}