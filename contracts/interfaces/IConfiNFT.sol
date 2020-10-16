pragma solidity =0.5.16;


interface IConfiNFT {

  function safeTransferFrom(address _from, address _to, uint256 _id, uint256 _amount, bytes calldata _data) external;

  function safeBatchTransferFrom(address _from, address _to, uint256[] calldata _ids, uint256[] calldata _amounts, bytes calldata _data) external;

  function balanceOf(address _owner, uint256 _id) external view returns (uint256);

  function balanceOfBatch(address[] calldata _owners, uint256[] calldata _ids) external view returns (uint256[] memory);

  function setApprovalForAll(address _operator, bool _approved) external;

  function isApprovedForAll(address _owner, address _operator) external view returns (bool isOperator);

  function categoryOf(uint256 _id) external view returns(uint256 categoryId);

  function name() external view returns (string memory);

  function symbol() external view returns (string memory);
}
